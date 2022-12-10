import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:knowledge_button_app/models/knowledge_button.dart';
import 'package:knowledge_button_app/viewModels/button_list_view_model.dart';
import 'package:knowledge_button_app/views/pages/home/components/button_list.dart';

class HomePageBody extends ConsumerWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // AsyncValueの変更を監視
    final AsyncValue<List<KnowledgeButton>> asyncValue =
        ref.watch(buttonListViewModelProvider);
    return NotificationListener<ScrollEndNotification>(
      child: Scrollbar(
        child: CustomScrollView(
          restorationId: 'button',
          slivers: <Widget>[
            asyncValue.when(
              // データ取得完了
              data: (data) {
                return ButtonList(data: data);
              },
              // エラー発生
              error: ((error, stackTrace) {
                // 取得済みのデータがあるならデータ表示
                if (asyncValue.hasValue) {
                  return ButtonList(data: asyncValue.value ?? []);
                }

                return const SliverPadding(
                  padding: EdgeInsets.all(24.0),
                  sliver: SliverToBoxAdapter(
                    child: Center(
                      child: Text('エラーが発生しました'),
                    ),
                  ),
                );
              }),
              // 初回ローディング
              loading: () {
                return const SliverPadding(
                  padding: EdgeInsets.all(24.0),
                  sliver: SliverToBoxAdapter(
                    child: Center(
                      child: CupertinoActivityIndicator(),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
