import 'package:flutter/material.dart';
import 'package:knowledge_button_app/views/pages/createButton/components/create_button_page_app_bar.dart';
import 'package:knowledge_button_app/views/pages/createButton/components/create_button_page_body.dart';

class CreateButtonPage extends StatelessWidget {
  const CreateButtonPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CreateButtonPageAppBar(),
      body: CreateButtonPageBody(),
      backgroundColor: Colors.white,
    );
  }
}
