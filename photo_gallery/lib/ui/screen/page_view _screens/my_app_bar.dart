import 'package:flutter/material.dart';
import 'package:surf_flutter_courses_template/ui/res/styles.dart';

// Widget App Bar

class MyAppBarDatailScreen extends StatelessWidget
    implements PreferredSizeWidget {
  final int currentPage;
  final List image;

  const MyAppBarDatailScreen(
      {super.key, required this.currentPage, required this.image});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      actions: [
        Text(
          '${currentPage + 1}',
          style: AppTypography.textText18Bold
              .copyWith(color: AppColors.colorBlack),
        ),
        Text(
          ' / ${image.length}',
          style:
              AppTypography.textText18Bold.copyWith(color: AppColors.colorGray),
        ),
        const SizedBox(
          width: 20,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
