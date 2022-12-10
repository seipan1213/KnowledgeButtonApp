import 'dart:math';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:knowledge_button_app/models/knowledge_button.dart';
import 'package:knowledge_button_app/viewModels/button_list_view_model.dart';
import 'package:url_launcher/url_launcher.dart';

class ButtonDetailPageBody extends ConsumerWidget {
  const ButtonDetailPageBody({super.key, required this.buttonData});

  final KnowledgeButton buttonData;
  Future<void> _launchUrl() async {
    final Uri url =
        Uri.parse(buttonData.urls[Random().nextInt(buttonData.urls.length)]);
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30, bottom: 75),
          child: Center(
              child: Text(
            "${buttonData.title} のことをもっと知れるボタンです!\nたくさん押してみましょう!",
            style: const TextStyle(
              fontSize: 18,
            ),
          )),
        ),
        Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.lightGreen,
              shape: const CircleBorder(
                side: BorderSide(
                  color: Colors.black,
                  width: 1,
                  style: BorderStyle.solid,
                ),
              ),
            ),
            child: const SizedBox(
              height: 350,
              width: 350,
              child: Center(
                child: Image(
                  height: 300,
                  width: 300,
                  image: NetworkImage(
                      'https://1.bp.blogspot.com/-cjHol-V3tEA/UV1JKWwVOHI/AAAAAAAAPUc/kpkipj47LI4/s1600/kome_tawara.png'),
                ),
              ),
            ),
            onPressed: () {
              _launchUrl();
              ref.watch(buttonListViewModelProvider).value!.first.counter++;
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Text(
            'あなたの知った回数: ${buttonData.counter}',
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        )
      ],
    );
  }
}
