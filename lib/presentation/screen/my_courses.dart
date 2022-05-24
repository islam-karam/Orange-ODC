import 'package:flutter/material.dart';
import 'package:odc_project/constants/colors.dart';
import 'package:odc_project/presentation/widget/widget.dart';

class MyCourses extends StatelessWidget {
  const MyCourses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteColor,
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: MyColors.whiteColor,
        elevation: 0,
        title: const Text(
          'My Courses',
          style: TextStyle(fontSize: 30, color: MyColors.orangeColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.separated(
          itemBuilder: ((context, index) => buildMyCourseItem(context)),
          separatorBuilder: (context, index) => const SizedBox(height: 20),
          itemCount: 2,
        ),
      ),
    );
  }
}
