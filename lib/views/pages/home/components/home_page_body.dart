import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kome_app/models/knowledge_data.dart';
import 'package:kome_app/viewModels/button_list_view_model.dart';

class HomePageBody extends ConsumerWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // AsyncValueの変更を監視
    final AsyncValue<List<KnowledgeData>> asyncValue =
        ref.watch(buttonListViewModelProvider);
    return const Text("data");
  }
}
