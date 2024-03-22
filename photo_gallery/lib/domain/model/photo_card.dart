import 'package:flutter/material.dart';

class PhotoCard extends StatelessWidget {
  const PhotoCard({
    super.key,
    required this.image,
    required this.onTap,
  });

  final String image;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 116,
        width: 116,
        child: Image.asset(
          image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
