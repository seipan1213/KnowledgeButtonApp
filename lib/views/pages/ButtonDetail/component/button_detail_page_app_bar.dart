import 'package:flutter/material.dart';
import 'package:knowledge_button_app/models/knowledge_button.dart';

class ButtonDetailPageAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const ButtonDetailPageAppBar({super.key, required this.buttonData});

  final KnowledgeButton buttonData;

  @override
  Size get preferredSize => const Size(double.infinity, kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("${buttonData.title} 知るボタン"),
    );
  }
}
