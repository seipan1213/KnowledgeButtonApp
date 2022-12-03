import 'package:flutter/material.dart';
import 'package:kome_app/models/knowledge_button.dart';
import 'package:kome_app/views/pages/home/components/button_item.dart';

class ButtonList extends StatelessWidget {
  const ButtonList({
    super.key,
    required this.data,
  });

  final List<KnowledgeButton> data;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return ButtonItem(buttonData: data[index]);
        },
        childCount: data.length,
      ),
    );
  }
}
