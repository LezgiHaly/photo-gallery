import 'package:flutter/material.dart';
import 'package:surf_flutter_courses_template/data/mocks.dart';

// Виджет карусели фотографий

// ignore: must_be_immutable
class PhotoCarouselWidget extends StatefulWidget {
  final int index;
  final List<String> images;
  late int currentPage;
  void Function(int)? onPageChanged;
  PhotoCarouselWidget(
      {super.key,
      required this.index,
      required this.images,
      required this.currentPage,
      required this.onPageChanged});

  @override
  State<PhotoCarouselWidget> createState() => _PhotoCarouselWidgetState();
}

class _PhotoCarouselWidgetState extends State<PhotoCarouselWidget> {
  late final controller = PageController(
    viewportFraction: 0.6,
    initialPage: widget.index,
  );

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {
        widget.currentPage = controller.page!.toInt();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      onPageChanged: widget.onPageChanged,
      controller: controller,
      itemCount: photoList.length,
      itemBuilder: (_, index) => Center(
        child: AnimatedScale(
          scale: widget.currentPage == index ? 0.9 : 0.8,
          duration: const Duration(milliseconds: 200),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Hero(
              tag: widget.images[index],
              child: SizedBox(
                height: 600,
                width: 312,
                child: Image.asset(
                  widget.images[index],
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
