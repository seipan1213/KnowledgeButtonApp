import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kome_app/models/knowledge_button.dart';
import 'package:kome_app/views/pages/buttonDetail/button_detail_page.dart';

class ButtonItem extends StatelessWidget {
  const ButtonItem({
    super.key,
    required this.buttonData,
  });

  final KnowledgeButton buttonData;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(
          ButtonDetailPage(buttonData: buttonData),
          fullscreenDialog: true,
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 1.0,
              color: Colors.grey.shade200,
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(buttonData.title),
          ],
        ),
      ),
    );
  }
}
