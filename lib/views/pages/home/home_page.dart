import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kome_app/views/pages/createButton/create_button_page.dart';
import 'package:kome_app/views/pages/home/components/home_page_app_bar.dart';
import 'package:kome_app/views/pages/home/components/home_page_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomePageAppBar(),
      body: const HomePageBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(
            const CreateButtonPage(),
            fullscreenDialog: true,
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
