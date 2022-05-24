import 'package:flutter/material.dart';

import '../../constants/colors.dart';

Widget defaultButton({
  double width = 154,
  double height = 50,
  double radius = 70.0,
  Color background = Colors.white,
  bool isUpperCase = false,
  required Function onPressed,
  required String text,
}) =>
    Container(
      height: height,
      width: width,
      child: MaterialButton(
        onPressed: onPressed(),
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(radius),
      ),
    );

Widget buildCourseItem(String image) => SizedBox(
      width: 260,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 260.14,
            height: 149.04,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 11),
          const Text('Wep Development',
              style: TextStyle(
                  fontSize: 9,
                  fontWeight: FontWeight.bold,
                  color: MyColors.orangeColor)),
          const SizedBox(height: 5),
          const Text('Become a Web Developer from Scratch',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
          const SizedBox(height: 5),
          const Text('Ahmed Abaza : 15 Hours',
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey)),
        ],
      ),
    );

Widget buildCategoryItem(
  String title,
  String image,
) =>
    Column(
      children: [
        Container(
          height: 73,
          width: 73,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: MyColors.whiteColor,
          ),
          child: Center(
              child: Image.asset(
            'assets/images/Vector.png',
            height: 37,
            width: 37,
            fit: BoxFit.fill,
          )),
        ),
        const SizedBox(height: 5),
        Text(
          title,
          style: const TextStyle(
            fontSize: 9,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );

Widget appBarLogo() => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 39,
            height: 39,
            child: Image.asset('assets/images/orange_logo.svg.png'),
          ),
          const SizedBox(
            width: 5,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'ODC',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              Text(
                'EGYPT',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    );

Widget cardCode(TextEditingController controller) => Container(
      decoration: BoxDecoration(
        color: MyColors.blackColor,
        borderRadius: BorderRadius.circular(20),
      ),
      width: double.infinity,
      height: 195,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(30.0),
            child: Text(
              "Enter The Code To \n Get Your Course",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 10.0, left: 10),
                  child: TextField(
                    controller: controller,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      hintText: 'Enter Code',
                      filled: true,
                      fillColor: Color.fromRGBO(105, 105, 105, 0.5),
                      hintStyle: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 15),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: MyColors.orangeColor,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );

void navigateTo(context, widget) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );

void navigateAndFinish(context, widget) => Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
      (Route<dynamic> route) => false,
    );

Widget myDivider() => Padding(
      padding: const EdgeInsetsDirectional.only(
        start: 20.0,
        end: 20.0,
      ),
      child: Container(
        width: double.infinity,
        height: 0.5,
        color: Colors.grey[300],
      ),
    );

Widget buildNewCourseItem(context) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.2,
          height: MediaQuery.of(context).size.width * 0.2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
              image: AssetImage('assets/images/1.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Mobile Development',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 13),
              ),
              const SizedBox(height: 10),
              Row(
                children: const [
                  Text(
                    'islam karam',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 10),
                  ),
                  SizedBox(width: 10),
                  Text(
                    '20',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 10),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget buildMyCourseItem(context) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: InkWell(
      onTap: () {},
      child: Card(
        child: Row(
          children: [
            Container(
              width: 106,
              height: 78,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image: AssetImage('assets/images/1.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Mobile Development',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 13),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: const [
                      Text(
                        'Author',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 10),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'islam karam',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 10),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 13),
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[300],
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget buildMyAchievementItem(context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    padding: const EdgeInsets.all(15),
    height: 130,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: const [
        BoxShadow(
          color: Colors.grey,
          blurRadius: 10,
          offset: Offset(0, 10),
        ),
      ],
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: SizedBox(
                  height: 75,
                  width: 75,
                  child:
                      Image.asset('assets/images/Star.png', fit: BoxFit.cover),
                )),
          ],
        ),
        const SizedBox(width: 20),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Learn UI/UX for beginners',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text('Achieved April 21 2022',
                style: TextStyle(
                  fontSize: 11,
                  color: Colors.grey,
                )),
          ],
        ),
      ],
    ),
  );
}

Widget textForm(
  TextEditingController controller,
  String label
) =>
    TextFormField(
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.grey)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          filled: true,
          fillColor: Colors.grey[200],
          labelText: label,
          labelStyle: TextStyle(color: Colors.grey)),
    );

Widget defaultBottom(String titel,context,widget) => Container(
      width: double.infinity,
      height: 56,
      decoration: BoxDecoration(
        color: MyColors.orangeColor,
        border: Border.all(color: MyColors.orangeColor),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: MaterialButton(
        onPressed: () {
          navigateTo(context, widget);
        },
        child: Text(
          titel,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
          ),
        ),
      ),
    );
