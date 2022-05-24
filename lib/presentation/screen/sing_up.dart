import 'package:flutter/material.dart';
import 'package:odc_project/presentation/screen/log_in.dart';
import 'package:odc_project/presentation/screen/privacy_policy.dart';

import '../../constants/colors.dart';
import '../widget/widget.dart';

class SingUp extends StatefulWidget {
  const SingUp({Key? key}) : super(key: key);

  @override
  State<SingUp> createState() => _SingUpState();
}

final formKey = GlobalKey<FormState>();
var namecontroller = TextEditingController();
var emailcontroller = TextEditingController();
var passwordcontroller = TextEditingController();
var phonecontroller = TextEditingController();
var addresscontroller = TextEditingController();

class _SingUpState extends State<SingUp> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: _scaffoldKey,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 120,
                  left: 20,
                ),
                child: ListTile(
                  title: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "Hello,",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: fontTitleB,
                              color: colorBlack)),
                      TextSpan(
                          text: " Friend!",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: fontTitleB,
                              color: colorTxetOrange))
                    ]),
                  ),
                  subtitle: Text(
                    "Sign Up",
                    style: TextStyle(
                      color: colorBlack,
                      fontSize: fontDescB,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            //this Form regester Widget
            _FomrRegester(),
            const SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }

// this Widget Form Regester
  Widget _FomrRegester() {
    return Container(
      margin: EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      padding: EdgeInsets.only(left: 5, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 15,
          ),
          //------------ text Name up button------------------------
          Container(
            decoration: BoxDecoration(
                color: Color(0xfff8f8f8),
                borderRadius: BorderRadius.circular(10)),
            child: TextFormField(
              keyboardType: TextInputType.name,
              validator: (value) {
                if (value!.isEmpty || !RegExp('').hasMatch(value)) {
                  return "This field is required";
                } else {
                  return null;
                }
              },
              controller: namecontroller,
              decoration: InputDecoration(
                  fillColor: colorBlack,
                  // this text plucholder in butten
                  hintText: "Full Name",
                  hintStyle: const TextStyle(
                    color: Color(0xffd0d0d0),
                  ),
                  // icone befor text email
                  prefixIcon: const Icon(
                    Icons.account_circle_outlined,
                    color: Color(0xffd0d0d0),
                  ),
                  //this broder betton email
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(width: 1.0, color: colorText)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        width: 1.0,
                        color: Colors.grey,
                      ))),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          
          Container(
            decoration: BoxDecoration(
                color: Color(0xfff8f8f8),
                borderRadius: BorderRadius.circular(10)),
            child: TextFormField(
              validator: (value) {
                if (value!.isEmpty ||
                    !RegExp(r'^[\w-\,]+@[\w-]+[\w-]{2,4}').hasMatch(value)) {
                  return "This field is required";
                } else {
                  return null;
                }
              },
              controller: emailcontroller,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  // this text plucholder in butten
                  hintText: "Enter Your Email",
                  hintStyle: const TextStyle(
                    color: Color(0xffd0d0d0),
                  ),
                  // icone befor text email
                  prefixIcon: const Icon(
                    Icons.email,
                    color: Color(0xffd0d0d0),
                  ),
                  //this broder betton email
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(width: 1.0, color: colorText)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        width: 1.0,
                        color: Colors.grey,
                      ))),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
         

          Container(
            decoration: BoxDecoration(
                color: Color(0xfff8f8f8),
                borderRadius: BorderRadius.circular(10)),
            child: TextFormField(
              keyboardType: TextInputType.visiblePassword,
              validator: (value) {
                if (value!.isEmpty || value.length < 8) {
                  return "This field is required";
                } else {
                  return null;
                }
              },
              controller: passwordcontroller,
              decoration: InputDecoration(
                  // this text plucholder in butten
                  hintText: "Enter Your Password",
                  hintStyle: const TextStyle(
                    color: Color(0xffd0d0d0),
                  ),
                  // icone befor text email
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: Color(0xffd0d0d0),
                  ),
                  //this broder betton email
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(width: 1.0, color: colorText)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        width: 1.0,
                        color: Colors.grey,
                      ))),
              obscureText: true,
            ),
          ),
          const SizedBox(
            height: 35,
          ),
         
          Container(
            decoration: BoxDecoration(
                color: Color(0xfff8f8f8),
                borderRadius: BorderRadius.circular(10)),
            child: TextFormField(
              validator: (value) {
                if (value!.isEmpty || !RegExp("").hasMatch(value)) {
                  return "This field is required";
                } else {
                  return null;
                }
              },
              controller: phonecontroller,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  // this text plucholder in butten
                  hintText: "Enter Your Phone",
                  hintStyle: const TextStyle(
                    color: Color(0xffd0d0d0),
                  ),
                  // icone befor text email
                  prefixIcon: const Icon(Icons.phone, color: Color(0xffd0d0d0)),
                  //this broder betton email
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(width: 1.0, color: colorText)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        width: 1.0,
                        color: Colors.grey,
                      ))),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
         
          Container(
            decoration: BoxDecoration(
                color: Color(0xfff8f8f8),
                borderRadius: BorderRadius.circular(10)),
            child: TextFormField(
              validator: (value) {
                if (value!.isEmpty || !RegExp("").hasMatch(value)) {
                  return "This field is required";
                } else {
                  return null;
                }
              },
              controller: addresscontroller,
              keyboardType: TextInputType.streetAddress,
              decoration: InputDecoration(
                  // this text plucholder in butten
                  hintText: "Enter Your Phone",
                  hintStyle: const TextStyle(
                    color: Color(0xffd0d0d0),
                  ),
                  // icone befor text email
                  prefixIcon: const Icon(
                    Icons.add_location,
                    color: Color(0xffd0d0d0),
                  ),
                  //this broder betton email
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(width: 1.0, color: colorText)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        width: 1.0,
                        color: Colors.grey,
                      ))),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(
                left: 20,
                top: 20,
                bottom: 20,
              ),
              child: Row(
                children: [
                  const Text(
                    "Don't have an accont yet ?",
                    style: TextStyle(
                        fontSize: fontDescA,
                        fontWeight: FontWeight.bold,
                        color: colorBlack),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    child: const Text(
                      "Privacy Policy",
                      style: TextStyle(
                        fontSize: fontDescA,
                        fontWeight: FontWeight.bold,
                        color: colorTxetOrange,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    onTap: (){
                      navigateTo(context, PrivacyPolicy());
                    },
                  ),
                ],
              )),
         
          Center(
            child: Container(
              child: ElevatedButton(
                onPressed: () {
                  print('click');
                  if (formKey.currentState!.validate()) {
                    print('Validate');
                    print(emailcontroller.text);
                    print(passwordcontroller.text);
                    print(namecontroller.text);
                    print(phonecontroller.text);
                    print(addresscontroller.text);
                  }
                },
                child: const Text(
                  " SIGN UP",
                  style: TextStyle(
                    color: colorText,
                    fontSize: 15,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.only(
                      left: 110, right: 110, top: 15, bottom: 15),
                  primary: colorButton,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          // ------------------strat text Login ---------\
          Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(
                top: 20,
                bottom: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already Have an Account? ",
                    style: TextStyle(
                        fontSize: fontDescA,
                        fontWeight: FontWeight.bold,
                        color: colorBlack),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        fontSize: fontDescA,
                        fontWeight: FontWeight.bold,
                        color: colorTxetOrange,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                  ),
                ],
              )),
          // ------------------end  text Login ---------\
        ],
      ),
    );
  }
}
