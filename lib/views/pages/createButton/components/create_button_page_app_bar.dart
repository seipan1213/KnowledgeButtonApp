import 'package:flutter/material.dart';

class CreateButtonPageAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const CreateButtonPageAppBar({
    super.key,
  });

  @override
  Size get preferredSize => const Size(double.infinity, kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        'ボタン作成',
      ),
    );
  }
}
