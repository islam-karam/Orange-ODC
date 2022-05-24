import 'package:flutter/material.dart';

import '../widget/widget.dart';

// ignore: must_be_immutable
class Categories extends StatelessWidget {
  Categories({Key? key}) : super(key: key);

  List<String> images = [
    'assets/images/Vector.png',
    'assets/images/code1.png',
    'assets/images/computer1.png',
  ];
  List<String> title = [
    'Web Development',
    'Programing Languages',
    'Graphics',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Categories',
          style: TextStyle(fontSize: 19, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 1,
            crossAxisSpacing: 1,
            childAspectRatio: 1 / 1,
          ),
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          itemCount: images.length,
          itemBuilder: (context, index) =>
              buildCategoryItem(title[index], images[index]),
        ),
      ),
    );
  }
}
