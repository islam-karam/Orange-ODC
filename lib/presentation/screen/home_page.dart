import 'package:flutter/material.dart';
import 'package:odc_project/constants/colors.dart';
import 'package:odc_project/presentation/screen/categories.dart';
import 'package:odc_project/presentation/screen/new_courses.dart';

import '../widget/widget.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  var controller = TextEditingController();
  List<String> images = [
    'assets/images/1.png',
    'assets/images/code2.png',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            appBarLogo(),
            const SizedBox(height: 30),
            cardCode(controller),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Top Categories',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {
                    navigateTo(context, Categories());
                  },
                  child: const Text(
                    'See all',
                    style: TextStyle(fontSize: 10, color: Colors.black,decoration: TextDecoration.underline),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildCategoryItem(
                  'Web Development',
                  'assets/images/Vector.png',
                ),
                buildCategoryItem(
                    'Programing Languages', 'assets/images/Vector.png'),
                buildCategoryItem('Graphics', 'assets/images/Vector.png'),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'New Courses',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {
                    navigateTo(context, const NewCourses());
                  },
                  child: const Text(
                    'See all',
                    style: TextStyle(fontSize: 10, color: MyColors.orangeColor),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 300,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => buildCourseItem(images[index]),
                separatorBuilder: (context, index) => const SizedBox(
                  width: 13,
                ),
                itemCount: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
