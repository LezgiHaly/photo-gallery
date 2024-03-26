import 'package:flutter/material.dart';
import 'package:surf_flutter_courses_template/ui/res/styles.dart';

// Widget App Bar
class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Image.asset(AppAssets.appTtitleLogo),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
