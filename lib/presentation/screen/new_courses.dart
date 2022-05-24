import 'package:flutter/material.dart';

import '../widget/widget.dart';

class NewCourses extends StatelessWidget {
  const NewCourses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'New Courses',
          style: TextStyle(fontSize: 19, color: Colors.black),
        ),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => buildNewCourseItem(context),
        separatorBuilder: (context, index) => myDivider(),
        itemCount: 5,
      ),
    );
  }

}
