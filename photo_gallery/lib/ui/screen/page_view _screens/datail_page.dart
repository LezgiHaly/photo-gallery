import 'package:flutter/material.dart';
import 'package:surf_flutter_courses_template/data/mocks.dart';

class DatailPage extends StatefulWidget {
  final List<String> images;
  final int index;

  const DatailPage({super.key, required this.images, required this.index});

  @override
  State<DatailPage> createState() => _DatailPageState();
}

class _DatailPageState extends State<DatailPage> {
  late var currentPage = widget.index;

  late final controller = PageController(
    viewportFraction: 0.6,
    initialPage: widget.index,
  );

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {
        currentPage = controller.page!.toInt();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
            style: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.w700, color: Colors.black),
          ),
          Text(
            ' / ${widget.images.length}',
            style: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.w700, color: Colors.grey),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: controller,
              itemCount: photoList.length,
              itemBuilder: (_, index) => Center(
                child: AnimatedScale(
                  scale: currentPage == index ? 0.9 : 0.8,
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
            ),
          ),
        ],
      ),
    );
  }
}
