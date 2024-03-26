import 'package:flutter/material.dart';
import 'package:surf_flutter_courses_template/ui/screen/widgats/my_app_bar.dart';
import 'package:surf_flutter_courses_template/ui/screen/widgats/photo_grid_widget.dart';

// Домашний экран (сетка фотографий)

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: PhotoGridWidget(),
      ),
    );
  }
}
