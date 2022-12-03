import 'package:flutter/material.dart';
import 'package:kome_app/models/knowledge_button.dart';
import 'package:kome_app/views/pages/ButtonDetail/component/button_detail_page_app_bar.dart';

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
      backgroundColor: Colors.white,
    );
  }
}
