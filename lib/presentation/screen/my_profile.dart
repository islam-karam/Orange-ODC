import 'package:flutter/material.dart';
import 'package:odc_project/constants/colors.dart';

import '../widget/widget.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteColor,
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.logout, color: Colors.black),
            onPressed: () {},
          ),
        ],
        centerTitle: false,
      backgroundColor: MyColors.whiteColor,
        elevation: 0,
        title: const Text('My Profile',
            style: TextStyle(fontSize: 30, color: MyColors.orangeColor)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    backgroundColor: MyColors.orangeColor,
                    radius: 80,
                    child: CircleAvatar(
                      radius: 70,
                      backgroundImage: AssetImage('assets/images/profile.jpg'),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Islam karam',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 14),
                  Container(
                    width: 158,
                    height: 21,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'islamkaram74@gmail.com',
                        style: TextStyle(fontSize: 11, color: Colors.grey[500]),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Align(
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  const Text('My Achievement',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  buildMyAchievementItem(context),
                  const SizedBox(height: 10),
                  buildMyAchievementItem(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
