import 'package:flutter/material.dart';
import 'package:surf_flutter_courses_template/ui/screen/page_view%20_screens/my_app_bar.dart';
import 'package:surf_flutter_courses_template/ui/screen/page_view%20_screens/photo_carousel_widget.dart';

// Экран с каруселью фотографий

class DatailPage extends StatefulWidget {
  final List<String> images;
  final int index;
  const DatailPage({super.key, required this.images, required this.index});

  @override
  State<DatailPage> createState() => _DatailPageState();
}

class _DatailPageState extends State<DatailPage> {
  late int currentPage = widget.index;

  _onPageViewChange(int page) {
    setState(() {
      currentPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBarDatailScreen(
        currentPage: currentPage,
        image: widget.images,
      ),
      body: PhotoCarouselWidget(
        currentPage: currentPage,
        index: widget.index,
        images: widget.images,
        onPageChanged: (page) => _onPageViewChange(page),
      ),
    );
  }
}
