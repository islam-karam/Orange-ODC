import 'package:flutter/material.dart';
import 'package:odc_project/presentation/screen/new_password.dart';
import 'package:sms_otp_auto_verify/sms_otp_auto_verify.dart';

import '../../constants/colors.dart';
import '../widget/widget.dart';
import 'home_layout.dart';

class OtpScreen extends StatefulWidget {
  OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  var controller = TextEditingController();
  int otpCodeLength = 4;
  bool isLoadingButton = false;
  bool enableButton = false;
  String otpCode = "";

  onOtpCallBack(String otpCode, bool isAutofill) {
    setState(() {
      this.otpCode = otpCode;
      if (otpCode.length == otpCodeLength && isAutofill) {
        enableButton = false;
        isLoadingButton = true;
      } else if (otpCode.length == otpCodeLength && !isAutofill) {
        enableButton = true;
        isLoadingButton = false;
      } else {
        enableButton = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Verify Your Email',
          style: TextStyle(color: Colors.black, fontSize: 19),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: 141),
              Center(
                child: Image.asset(
                  'assets/images/password2.png',
                  height: 197,
                  width: 197,
                ),
              ),
              SizedBox(height: 60),
              RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: 'please enter the 4-digit code sent to ',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: 'islamkaram74@gmail.com',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: MyColors.orangeColor,
                          ),
                          //textAlign: TextAlign.center,
                        ),
                      ])),
              SizedBox(height: 47),
              TextFieldPin(
                textController: controller,
                codeLength: otpCodeLength,
                alignment: MainAxisAlignment.center,
                defaultBoxSize: 56.0,
                margin: 10,
                selectedBoxSize: 60.0,
                textStyle: TextStyle(fontSize: 25),
                defaultDecoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(15.0),
                ),
                onChange: (code) {
                  onOtpCallBack(code, false);
                },
              ),
              Container(
                width: 335,
                height: 55,
                child: defaultBottom("Verify", context, NewPassword()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//please enter the 4-digit code sent to
