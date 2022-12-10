import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:knowledge_button_app/viewModels/button_list_view_model.dart';

// ignore: must_be_immutable
class CreateButtonPageBody extends ConsumerWidget {
  CreateButtonPageBody({super.key});

  String title = "";
  List<String> urls = List.filled(5, "");

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
        child: Column(
      children: <Widget>[
        Padding(
            padding: const EdgeInsets.all(8),
            child: SizedBox(
                width: 250,
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "Title",
                      filled: true,
                      fillColor: Colors.grey.shade200,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      )),
                  onChanged: (title) {
                    this.title = title;
                  },
                ))),
        for (int index = 0; index < urls.length; index++)
          Padding(
              padding: const EdgeInsets.all(8),
              child: SizedBox(
                width: 250,
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "Url",
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
              )),
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
              height: 100,
              width: 100,
              child: Center(
                child: Text("Create"),
              ),
            ),
            onPressed: () async {
              ref
                  .read(buttonListViewModelProvider.notifier)
                  .addButtonData(title, urls)
                  .then((value) => Get.back())
                  .catchError((err) async {
                await showDialog(
                    context: context,
                    builder: (_) {
                      return AlertDialog(
                        title: const Text('エラー'),
                        content: const Text('存在しないURLが含まれています。'),
                        actions: [
                          ElevatedButton(
                            child: const Text('OK'),
                            onPressed: () => Navigator.pop(context),
                          ),
                        ],
                      );
                    });
              });
            },
          ),
        ),
      ],
    ));
  }
}
