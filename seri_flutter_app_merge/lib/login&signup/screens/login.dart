import 'dart:ui';

import 'package:flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seri_flutter_app/homescreen/screens/home_screen.dart';
import 'package:seri_flutter_app/login&signup/controller/login_controller.dart';
import 'package:seri_flutter_app/login&signup/models/LoginData.dart';
import 'package:seri_flutter_app/login&signup/screens/signup.dart';
import 'package:seri_flutter_app/policy/PrivacyPolicy.dart';
import 'package:seri_flutter_app/update_customer/controller/update_controller.dart';
import 'package:seri_flutter_app/update_customer/models/UpdateCustomerData.dart';
import 'package:sizer/sizer.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email, password;
  bool _obscureText = false;
  var loginController;
  var updateController;

  LoginData loginData;

  doLogin() async {
    loginData = new LoginData(email: email, password: password);
    bool isAuthorized = await loginController.login(loginData);

    print(isAuthorized);

    if (isAuthorized) {
      Navigator.of(context).pop();
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (_) => HomePage()),
        (Route<dynamic> route) => false,
      );
    } else {
      Flushbar(
        margin: EdgeInsets.all(8),
        borderRadius: 8,
        message: "Invalid Email or Password",
        icon: Icon(
          Icons.info_outline,
          size: 20,
          color: Colors.lightBlue[800],
        ),
        duration: Duration(seconds: 2),
      )..show(context);
    }
  }

  doSkipLogin() async {
    bool todo = await updateController.updateCustomer(new UpdateCustomerData());
    if (todo) {
      Navigator.of(context).pop();
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (_) => HomePage()),
        (Route<dynamic> route) => false,
      );
      Flushbar(
        margin: EdgeInsets.all(8),
        borderRadius: 8,
        message: "Update Customer Done",
        icon: Icon(
          Icons.info_outline,
          size: 20,
          color: Colors.lightBlue[800],
        ),
        duration: Duration(seconds: 2),
      )..show(context);
    } else {
      Navigator.of(context).pop();
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (_) => HomePage()),
        (Route<dynamic> route) => false,
      );
      Flushbar(
        margin: EdgeInsets.all(8),
        borderRadius: 8,
        message: "Update Customer Done",
        icon: Icon(
          Icons.info_outline,
          size: 20,
          color: Colors.lightBlue[800],
        ),
        duration: Duration(seconds: 2),
      )..show(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    loginController = Provider.of<LoginController>(context);
    updateController = Provider.of<UpdateController>(context);
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Image.asset(
                      'lib/assets/images/login_top_image.png',
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width * 0.4,
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 25),
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Login',
                            style: TextStyle(
                              fontFamily: 'GothamMedium',
                              fontSize: 22.0.sp,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 71, 54, 111),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height * 0.1,
                      child: Form(
                        autovalidateMode: AutovalidateMode.always,
                        child: TextFormField(
                          validator: (val) {
                            return RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)').hasMatch(val) ||
                                    RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
                                            r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
                                            r"{0,253}[a-zA-Z0-9])?)*$")
                                        .hasMatch(val)
                                ? null
                                : "Please provide valid number or Email ID";
                          },
                          onChanged: (value) => email = value,
                          cursorColor: Color.fromARGB(255, 71, 54, 111),
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 71, 54, 111),
                                  width: 1,
                                ),
                              ),
                              labelText: "Email / Phone Number",
                              labelStyle: TextStyle(
                                fontFamily: 'GothamMedium',
                                fontSize: 10.0.sp,
                                color: Color.fromARGB(255, 71, 54, 111),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              )),
                        ),
                      ),
                    ),
                    SizedBox(height: 1.h),
                    Container(
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height * 0.1,
                      child: Form(
                        autovalidateMode: AutovalidateMode.always,
                        child: TextFormField(
                          validator: (val) {
                            return RegExp("^(?=.{8,32}\$)(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9]).*").hasMatch(val)
                                ? null
                                : "Input Valid Password";
                          },
                          obscureText: !_obscureText,
                          onChanged: (value) => password = value,
                          cursorColor: Color.fromARGB(255, 71, 54, 111),
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color.fromARGB(255, 71, 54, 111),
                                width: 1,
                              ),
                            ),
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    _obscureText = !_obscureText;
                                  });
                                },
                                icon: Icon(
                                  !_obscureText ? Icons.visibility : Icons.visibility_off,
                                  color: !_obscureText ? Color.fromARGB(255, 71, 54, 111) : Colors.grey[500],
                                )),
                            labelText: "Enter Password",
                            labelStyle: TextStyle(
                              fontSize: 10.0.sp,
                              fontFamily: 'GothamMedium',
                              color: Color.fromARGB(255, 71, 54, 111),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Text(
                        "Forgot password?",
                        style: TextStyle(
                          fontFamily: 'GothamMedium',
                          fontWeight: FontWeight.w600,
                          fontSize: 12.0.sp,
                          color: Color.fromARGB(255, 71, 54, 111),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                      child: RichText(
                        text: TextSpan(
                            text: "By Continuing, You Agree to the ",
                            style: TextStyle(
                              fontFamily: 'GothamMedium',
                              fontSize: 11.0.sp,
                              fontWeight: FontWeight.normal,
                              color: Color.fromARGB(255, 71, 54, 111),
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Privacy Policy & Terms and Conditions',
                                style: TextStyle(
                                  fontFamily: 'GothamMedium',
                                  fontSize: 12.0.sp,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.red,
                                ),
                                recognizer: new TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => PrivacyPolicy()));
                                  },
                              ),
                            ]),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                      padding: EdgeInsets.only(top: 0, left: 0),
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border(
                          bottom: BorderSide(color: Colors.black),
                          top: BorderSide(color: Colors.black),
                          left: BorderSide(color: Colors.black),
                          right: BorderSide(color: Colors.black),
                        ),
                      ),
                      child: MaterialButton(
                        minWidth: MediaQuery.of(context).size.width * 0.5,
                        height: MediaQuery.of(context).size.height * 0.2,
                        onPressed: () {
                          doLogin();
                        },
                        color: Color.fromARGB(255, 71, 54, 111),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "Login",
                          style: TextStyle(
                            fontFamily: 'GothamMedium',
                            fontWeight: FontWeight.w600,
                            fontSize: 12.0.sp,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      padding: EdgeInsets.only(top: 0, left: 0),
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border(
                          bottom: BorderSide(color: Colors.black),
                          top: BorderSide(color: Colors.black),
                          left: BorderSide(color: Colors.black),
                          right: BorderSide(color: Colors.black),
                        ),
                      ),
                      child: MaterialButton(
                        minWidth: MediaQuery.of(context).size.width * 0.5,
                        height: MediaQuery.of(context).size.height * 0.2,
                        onPressed: () {
                          // doSkipLogin();
                          Navigator.of(context).push(MaterialPageRoute(builder: (_) => HomePage()));
                        },
                        color: Colors.white,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "Skip Login",
                          style: TextStyle(
                            fontFamily: 'GothamMedium',
                            fontWeight: FontWeight.w600,
                            fontSize: 12.0.sp,
                            color: Color.fromARGB(255, 71, 54, 111),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 45, 0, 0),
                      child: RichText(
                        text: TextSpan(
                          text: "Don't Have an Account?",
                          style: TextStyle(
                            fontFamily: 'GothamMedium',
                            fontSize: 11.0.sp,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 71, 54, 111),
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: '  Register here',
                              style: TextStyle(
                                fontFamily: 'GothamMedium',
                                fontSize: 11.0.sp,
                                color: Colors.red,
                              ),
                              recognizer: new TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage()));
                                },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
