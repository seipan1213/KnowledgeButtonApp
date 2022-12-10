import 'package:flutter/material.dart';
import 'package:knowledge_button_app/models/knowledge_button.dart';
import 'package:knowledge_button_app/views/pages/buttonDetail/component/button_detail_page_app_bar.dart';
import 'package:knowledge_button_app/views/pages/buttonDetail/component/button_detail_page_body.dart';

class ButtonDetailPage extends StatelessWidget {
  const ButtonDetailPage({
    super.key,
    required this.buttonData,
  });

  final KnowledgeButton buttonData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ButtonDetailPageAppBar(buttonData: buttonData),
      body: ButtonDetailPageBody(buttonData: buttonData),
      backgroundColor: Colors.white,
    );
  }
}
