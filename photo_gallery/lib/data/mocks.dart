import 'package:surf_flutter_courses_template/ui/res/styles.dart';

const List<String> photoList = [
  AppAssets.photo1,
  AppAssets.photo2,
  AppAssets.photo3,
  AppAssets.photo4,
  AppAssets.photo5,
  AppAssets.photo6,
  AppAssets.photo7,
  AppAssets.photo8,
  AppAssets.photo9,
];

abstract class Images {
  static String logo = 'assets/image/image1.svg';
  static List<String> photos =
      List.generate(9, (index) => 'assets/image/jpg/photo${index + 1}.jpg');
}
