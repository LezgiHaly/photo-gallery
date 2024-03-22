import 'package:flutter/material.dart';
import 'package:surf_flutter_courses_template/data/mocks.dart';
import 'package:surf_flutter_courses_template/ui/res/styles.dart';
import 'package:surf_flutter_courses_template/ui/screen/page_view%20_screens/datail_page.dart';

class PhotoList extends StatelessWidget {
  const PhotoList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(AppAssets.appTtitleLogo),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 5,
            crossAxisSpacing: 3,
          ),
          itemCount: Images.photos.length,
          itemBuilder: (_, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DatailPage(
                      images: Images.photos,
                      index: index,
                    ),
                  ),
                );
              },
              child: Hero(
                tag: Images.photos[index],
                child: Image.asset(
                  Images.photos[index],
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
