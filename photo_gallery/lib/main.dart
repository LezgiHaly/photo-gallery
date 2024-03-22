import 'package:flutter/material.dart';

import 'package:surf_flutter_courses_template/ui/screen/widgats/photo_list.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      home: Scaffold(
        // appBar: AppBar(title: Text('data'),),
        //  SvgPicture.asset(Images.logo)),
        body: Center(
          child: 
        //  DatailPage(),
          PhotoList(),
        ),
      ),
    );
  }
}
