import 'package:flutter/material.dart';
import 'package:kome_app/views/pages/home/components/home_page_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HomePageAppBar(),
      backgroundColor: Colors.white,
    );
  }
}
