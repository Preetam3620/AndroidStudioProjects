import 'package:flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:seri_flutter_app/common/screens/S_38.dart';
import 'package:seri_flutter_app/common/screens/otp/main_otp.dart';
import 'package:seri_flutter_app/login&signup/controller/login_controller.dart';
import 'package:seri_flutter_app/login&signup/models/SignupData.dart';
import 'package:seri_flutter_app/return&exchange/screens/reutrn_and_exchange_main_screen.dart';
import 'package:sizer/sizer.dart';

import '../../common/screens/S_13.dart';
import 'login.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool checkedTerms = false;
  bool _obscureText = false;
  String name;
  int phoneNum;
  String email;
  String password;
  int pinCode;
  var signUpController;
  String phoneNumString;

  SignupData signupData;
  bool result = false;

  void doSignup() async {
    phoneNum = int.parse(phoneNumString);
    signupData = new SignupData(
        firstName: name,
        phoneNumber: phoneNum,
        email: email,
        password: password,
        userName: name);

    bool isAuthorized = await signUpController.signup(signupData);
    print(isAuthorized);

    if (isAuthorized) {
      //Navigator.of(context).pop();
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (_) => LoginPage()),
        (Route<dynamic> route) => false,
      );
    } else {
      Flushbar(
        margin: EdgeInsets.all(8),
        borderRadius: 8,
        message: "Error creating Account",
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
    signUpController = Provider.of<LoginController>(context);
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(30, 10, 30, 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SafeArea(
                child: Column(
                  children: <Widget>[
                    // backgroundImage: AssetImage("assets/PC 2.png"),
                    Image.asset(
                      'lib/assets/images/login_top_image.png',
                      height: 100,
                      width: 100,
                    ),

                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Register',
                        style: TextStyle(
                          fontFamily: 'GothamMedium',
                          fontSize: 20.0.sp,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 71, 54, 111),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 20,
                    ),

                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 65,
                      child: TextField(
                        onChanged: (value) => name = value,
                        cursorColor: Color.fromARGB(255, 71, 54, 111),
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color.fromARGB(255, 71, 54, 111),
                                width: 1,
                              ),
                            ),
                            labelText: "Name",
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
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 65,
                      child: Form(
                        autovalidateMode: AutovalidateMode.always,
                        child: TextFormField(
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          validator: (val) {
                            return RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)')
                                    .hasMatch(val)
                                ? null
                                : "Please provide valid number";
                          },
                          onChanged: (value) {
                            phoneNumString = value;
                          },
                          cursorColor: Color.fromARGB(255, 71, 54, 111),
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 71, 54, 111),
                                  width: 1,
                                ),
                              ),
                              labelText: "Phone Number",
                              labelStyle: TextStyle(
                                fontSize: 10.0.sp,
                                fontFamily: 'GothamMedium',
                                color: Color.fromARGB(255, 71, 54, 111),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              )),
                        ),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 65,
                      child: TextField(
                        onChanged: (value) => email = value,
                        cursorColor: Color.fromARGB(255, 71, 54, 111),
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color.fromARGB(255, 71, 54, 111),
                                width: 1,
                              ),
                            ),
                            labelText: "Email Address",
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

                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 65,
                      child: Form(
                        autovalidateMode: AutovalidateMode.always,
                        child: TextFormField(
                          validator: (val) {
                            return RegExp(
                                        "^(?=.{8,32}\$)(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9]).*")
                                    .hasMatch(val)
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
                                  !_obscureText
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: !_obscureText
                                      ? Color.fromARGB(255, 71, 54, 111)
                                      : Colors.grey[500],
                                )),
                            labelText: "Password",
                            labelStyle: TextStyle(
                              fontFamily: 'GothamMedium',
                              fontSize: 10.0.sp,
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
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 65,
                      child: TextFormField(
                        cursorColor: Color.fromARGB(255, 71, 54, 111),
                        obscureText: !_obscureText,
                        onChanged: (value) => password = value,
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
                                !_obscureText
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: !_obscureText
                                    ? Color.fromARGB(255, 71, 54, 111)
                                    : Colors.grey[500],
                              )),
                          labelText: "Retype Password",
                          labelStyle: TextStyle(
                            fontFamily: 'GothamMedium',
                            fontSize: 10.0.sp,
                            color: Color.fromARGB(255, 71, 54, 111),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: 65,
                      child: TextField(
                        cursorColor: Color.fromARGB(255, 71, 54, 111),
                        onChanged: (value) => pinCode,
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color.fromARGB(255, 71, 54, 111),
                                width: 1,
                              ),
                            ),
                            labelText: "Pincode",
                            labelStyle: TextStyle(
                              fontSize: 10.0.sp,
                              fontFamily: 'GothamMedium',
                              color: Color.fromARGB(255, 71, 54, 111),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            )),
                      ),
                    ),

                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 30,
                        ),
                        Container(
                          child: Checkbox(
                            checkColor: Colors.white,
                            activeColor: Color.fromARGB(255, 71, 54, 111),
                            value: this.checkedTerms,
                            onChanged: (bool value) {
                              setState(() {
                                this.checkedTerms = value;
                              });
                            },
                          ),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Flexible(
                          child: Container(
                            child: Text(
                                'I agree with the privacy policy & terms and conditions',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 71, 54, 111),
                                  fontSize: 12.0.sp,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: 'GothamMedium',
                                )),
                          ),
                        )
                      ],
                    ),

                    Container(
                      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      padding: EdgeInsets.only(top: 0, left: 0),
                      height: MediaQuery.of(context).size.height / 17,
                      width: MediaQuery.of(context).size.width / 2.2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border(
                            bottom: BorderSide(color: Colors.black),
                            top: BorderSide(color: Colors.black),
                            left: BorderSide(color: Colors.black),
                            right: BorderSide(color: Colors.black),
                          )),
                      child: MaterialButton(
                        onPressed: () {
                          doSignup();
                        },
                        color: Color.fromARGB(255, 71, 54, 111),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                          padding: EdgeInsets.only(top: 0, left: 0),
                          height: MediaQuery.of(context).size.height / 17,
                          width: MediaQuery.of(context).size.width / 6,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border(
                                bottom: BorderSide(color: Colors.black),
                                top: BorderSide(color: Colors.black),
                                left: BorderSide(color: Colors.black),
                                right: BorderSide(color: Colors.black),
                              )),
                          child: MaterialButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(builder: (_) => Otp_page()),
                              );
                            },
                            color: Color.fromARGB(255, 71, 54, 111),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              "OTP",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 11.0.sp,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                          padding: EdgeInsets.only(top: 0, left: 0),
                          height: MediaQuery.of(context).size.height / 17,
                          width: MediaQuery.of(context).size.width / 4,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border(
                                bottom: BorderSide(color: Colors.black),
                                top: BorderSide(color: Colors.black),
                                left: BorderSide(color: Colors.black),
                                right: BorderSide(color: Colors.black),
                              )),
                          child: MaterialButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(builder: (_) => Error404()),
                              );
                            },
                            color: Color.fromARGB(255, 71, 54, 111),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              "404_Error",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 10.0.sp,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                          padding: EdgeInsets.only(top: 0, left: 0),
                          height: MediaQuery.of(context).size.height / 17,
                          width: MediaQuery.of(context).size.width / 3,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border(
                                bottom: BorderSide(color: Colors.black),
                                top: BorderSide(color: Colors.black),
                                left: BorderSide(color: Colors.black),
                                right: BorderSide(color: Colors.black),
                              )),
                          child: MaterialButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(builder: (_) => S_13()),
                              );
                            },
                            color: Color.fromARGB(255, 71, 54, 111),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              "Address Add Success",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 10.0.sp,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      padding: EdgeInsets.only(top: 0, left: 0),
                      height: MediaQuery.of(context).size.height / 17,
                      width: MediaQuery.of(context).size.width / 2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border(
                            bottom: BorderSide(color: Colors.black),
                            top: BorderSide(color: Colors.black),
                            left: BorderSide(color: Colors.black),
                            right: BorderSide(color: Colors.black),
                          )),
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => ReturnAndExchange()),
                          );
                        },
                        color: Color.fromARGB(255, 71, 54, 111),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "Return & Exchange",
                          style: TextStyle(
                            fontFamily: 'GothamMedium',
                            fontWeight: FontWeight.w600,
                            fontSize: 10.0.sp,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// we will be creating a widget for text field
