import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:sizer/sizer.dart';

import 'otp_form.dart';

class Otp_page extends StatefulWidget {
  const Otp_page({Key key}) : super(key: key);

  @override
  _Otp_pageState createState() => _Otp_pageState();
}

class _Otp_pageState extends State<Otp_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            'OTP Verify',
            style: TextStyle(fontFamily: 'GothamMedium'),
          ),
          backgroundColor: Color.fromARGB(255, 71, 54, 111),
          automaticallyImplyLeading: true,
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios_sharp), onPressed: () {
            Navigator.of(context).pop();
          }),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(5.w, 6.w, 0, 1.w),
                alignment: Alignment.topLeft,
                child: Text(
                  'Cash on Delivery',
                  style: TextStyle(
                    fontSize: 20.sp,
                    color: Color.fromARGB(255, 71, 54, 111),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(5.w, 0, 0, 4.w),
                alignment: Alignment.topLeft,
                child: Text(
                  'You are willing to pay in cash at the time ofDelivery',
                  style: TextStyle(
                    fontSize: 10.sp,
                    color: Color.fromARGB(255, 71, 54, 111),
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(5.w, 0, 0, 3.w),
                alignment: Alignment.topLeft,
                child: Text(
                  'Enter OTP',
                  style: TextStyle(
                    fontSize: 15.sp,
                    color: Color.fromARGB(255, 71, 54, 111),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                child: OtpForm(),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(5.w, 5.w, 0, 4.w),
                alignment: Alignment.topLeft,
                child: RichText(
                  text: TextSpan(
                      text: "Haven't Received the OTP yet? ",
                      style: TextStyle(
                        fontSize: 10.sp,
                        color: Color.fromARGB(255, 71, 54, 111),
                        fontWeight: FontWeight.normal,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Resend OTP',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 10.sp,
                            ))
                      ]),
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Container(
                child: MaterialButton(
                  minWidth: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.05,
                  onPressed: () {
                    Alert(
                      context: context,
                      title: "You have entered an invalid OTP",
                      buttons: [
                        DialogButton(
                          child: Text(
                            "Try Again",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          onPressed: () => Navigator.pop(context),
                          width: 120,
                          color: Color.fromARGB(255, 71, 54, 111),
                        )
                      ],
                    ).show();
                  },
                  color: Color.fromARGB(255, 71, 54, 111),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  child: Text(
                    "Submit",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
