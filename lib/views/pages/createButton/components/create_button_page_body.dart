import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kome_app/viewModels/button_list_view_model.dart';

class CreateButtonPageBody extends ConsumerWidget {
  CreateButtonPageBody({super.key});

  final String title = "";
  final List<String> urls = List.filled(5, "");

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
        child: Column(
      children: <Widget>[
        Padding(
            padding: const EdgeInsets.all(8),
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  )),
              onChanged: (title) {
                title = title;
              },
            )),
        for (int index = 0; index < urls.length; index++)
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  )),
              onChanged: (url) {
                urls[index] = url;
              },
            ),
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
              height: 200,
              width: 200,
              child: Center(
                child: Text("Create"),
              ),
            ),
            onPressed: () {
              ref
                  .read(buttonListViewModelProvider.notifier)
                  .addButtonData(title, urls);
              Get.back();
            },
          ),
        ),
      ],
    ));
  }
}
