import 'package:flutter/material.dart';
import 'package:odc_project/presentation/screen/home_layout.dart';
import 'package:odc_project/presentation/screen/log_in.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../constants/colors.dart';
import '../../data/models/on_boarding_model.dart';
import '../widget/widget.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  List<BoardingModel> boarding = [
    BoardingModel(
      image: 'assets/images/illustration.png',
      title: 'Learn a lot of courses \n in Orange Education',
      body:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
    ),
    BoardingModel(
      image: 'assets/images/illustrations2.png',
      title: 'Learn a lot of coursesin Orange Education',
      body:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
    ),
    BoardingModel(
      image: 'assets/images/illustrations3.png',
      title: 'Learn a lot of coursesin Orange Education',
      body:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
    ),
  ];

  bool isLast = false;
  var boardingController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(elevation: 0, backgroundColor: MyColors.whiteColor, actions: [
        FlatButton(
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => Login()));
          },
          child: Text(
            'Skip',
            style: TextStyle(
              color: MyColors.orangeColor,
              fontSize: 16.0,
            ),
          ),
        ),
      ]),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: boardingController,
                physics: BouncingScrollPhysics(),
                onPageChanged: (int index) {
                  if (index == boarding.length - 1) {
                    setState(() {
                      isLast = true;
                    });
                    print('last');
                  } else {
                    setState(() {
                      isLast = false;
                    });
                  }
                },
                itemBuilder: (context, index) =>
                    buildBoardingItem(boarding[index]),
                itemCount: boarding.length,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            SmoothPageIndicator(
              controller: boardingController,
              effect: ExpandingDotsEffect(
                dotColor: Colors.grey,
                activeDotColor: MyColors.orangeColor,
                dotHeight: 10,
                expansionFactor: 4,
                dotWidth: 10,
                spacing: 5,
              ),
              count: boarding.length,
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 154,
                  height: 50,
                  decoration: BoxDecoration(
                    color: MyColors.orangeColor,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: MaterialButton(
                    onPressed: () {},
                    child: Text(
                      'Join Now',
                      style: TextStyle(
                        color: MyColors.whiteColor,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
              
                Container(
                  width: 154,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: MyColors.orangeColor),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: Text(
                      'Log in',
                      style: TextStyle(
                        color: MyColors.orangeColor,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
              
              ],
            ),
            SizedBox(
              height: 100.0,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildBoardingItem(BoardingModel board) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Image(
              image: AssetImage('${board.image}'),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '${board.title}',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 14,
          ),
          Text(
            '${board.body}',
            style: TextStyle(
              fontSize: 13,
            ),
          ),
          SizedBox(
            height: 150,
          ),
        ],
      );
}
