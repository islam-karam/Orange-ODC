import 'package:flutter/material.dart';
import 'package:odc_project/presentation/screen/home_layout.dart';
import 'package:odc_project/presentation/screen/on_boarding.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
     debugShowCheckedModeBanner: false,
      home: OnBoardingScreen() ,
    );
  }
}
