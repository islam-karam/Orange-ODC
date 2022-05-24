import 'package:flutter/material.dart';
import 'package:odc_project/constants/colors.dart';
import 'package:odc_project/presentation/screen/forgot_password.dart';
import 'package:odc_project/presentation/screen/home_layout.dart';
import 'package:odc_project/presentation/screen/sing_up.dart';

import '../widget/widget.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);

  var textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyColors.whiteColor,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: MyColors.whiteColor,
            elevation: 0,
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(40.0),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 41,
                          width: 41,
                          child: Image.asset(
                            'assets/icons/orange.png',
                          ),
                        ),
                        Text(
                          'Orange\nDigital\nCenter',
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 84,
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'WELCOME',
                        style: TextStyle(color: Colors.black, fontSize: 35),
                        children: [
                          TextSpan(
                            text: 'BACK!',
                            style: TextStyle(
                                color: MyColors.orangeColor, fontSize: 35),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Login',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    textForm(textController, 'Email'),
                    SizedBox(
                      height: 45,
                    ),
                    textForm(textController, 'Password'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            navigateTo(context, ForgetPassword());
                          },
                          child: const Text(
                            'Forgot Password?',
                            style: TextStyle(
                                fontSize: 10,
                                color: MyColors.orangeColor,
                                decoration: TextDecoration.underline),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 85,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 56,
                          decoration: BoxDecoration(
                            color: MyColors.orangeColor,
                            border: Border.all(color: MyColors.orangeColor),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: MaterialButton(
                            onPressed: () {
                              navigateTo(context, HomeLayout());
                            },
                            child: Text(
                              'Login',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Don’t Have an Account ? ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                navigateTo(
                                  context,
                                  SingUp(),
                                );
                              },
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                  color: MyColors.orangeColor,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
