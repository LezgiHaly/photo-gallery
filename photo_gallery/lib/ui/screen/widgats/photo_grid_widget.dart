import 'package:flutter/material.dart';
import 'package:surf_flutter_courses_template/data/mocks.dart';
import 'package:surf_flutter_courses_template/ui/screen/page_view%20_screens/datail_page.dart';

// Виджет с сеткой фотографий

class PhotoGridWidget extends StatelessWidget {
  const PhotoGridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 5,
        crossAxisSpacing: 3,
      ),
      itemCount: photoList.length,
      itemBuilder: (_, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DatailPage(
                  images: photoList,
                  index: index,
                ),
              ),
            );
          },
          child: Hero(
            tag: photoList[index],
            child: Image.asset(
              photoList[index],
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}
