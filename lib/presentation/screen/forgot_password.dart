import 'package:flutter/material.dart';
import 'package:odc_project/constants/colors.dart';
import 'package:odc_project/presentation/screen/otp_screen.dart';
import 'package:odc_project/presentation/widget/widget.dart';

class ForgetPassword extends StatelessWidget {
  ForgetPassword({Key? key}) : super(key: key);

  var controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: MyColors.whiteColor,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Forgot Password',
          style: TextStyle(color: Colors.black, fontSize: 19),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 141),
            Center(
              child: Image.asset(
                'assets/images/password1.png',
                height: 197,
                width: 197,
              ),
            ),
            SizedBox(height: 50),
            Text(
              'Please enter your email address to \n recieve vervication code',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 47),
            Container(
              width: 335,
              height: 55,
              child: textForm(controller, 'Email'),
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              width: 335,
              height: 55,
              child: defaultBottom('Send',context,OtpScreen()),
            ),
          ],
        ),
      ),
    );
  }
}
