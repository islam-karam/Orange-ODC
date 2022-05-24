import 'package:flutter/material.dart';
import 'package:odc_project/presentation/widget/widget.dart';

class NewPassword extends StatelessWidget {
  NewPassword({Key? key}) : super(key: key);

  var controller = TextEditingController();
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
        title: Text('Create New Password',
            style: TextStyle(color: Colors.black, fontSize: 19)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: 111),
              Center(
                child: Image.asset(
                  "assets/images/password3.png",
                  height: 197,
                  width: 197,
                ),
              ),
              SizedBox(height: 87),
              Text(
                'Enter your new password',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(height: 55),
              Container(
                width: 335,
                height: 50,
                child: textForm(controller, 'New Password'),
              ),
              SizedBox(height: 50),
              Container(
                width: 335,
                height: 50,
                child: textForm(controller, 'Confirm Password'),
              ),
              SizedBox(height: 50),
              Container(
                width: 335,
                height: 50,
                child: defaultBottom('submit', context, () {}),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
