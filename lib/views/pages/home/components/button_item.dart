import 'package:flutter/material.dart';
import 'package:kome_app/models/knowledge_button.dart';

class ButtonItem extends StatelessWidget {
  const ButtonItem({
    super.key,
    required this.button,
  });

  final KnowledgeButton button;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
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
            Text(button.title),
          ],
        ),
      ),
    );
  }
}
