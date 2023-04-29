import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:sms_otp_auto_verify/sms_otp_auto_verify.dart';

class OtpForm extends StatefulWidget {
  const OtpForm({
    Key key,
  }) : super(key: key);


  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {



  FocusNode pin2FocusNode;
  FocusNode pin3FocusNode;
  FocusNode pin4FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
  }

  void nextField(String value, FocusNode focusNode) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
          padding: EdgeInsets.only(left: 5.w),
          child: Column
            (children: [
      SizedBox(height: 5),
      Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.1,
              height: MediaQuery.of(context).size.height * 0.07,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  width: 1,
                  color: Colors.black,
                ),
              ),
              child: TextFormField(
                autofocus: true,
                cursorColor: Color.fromARGB(255, 71, 54, 111),
                obscureText: true,
                style: TextStyle(fontSize: 24),
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  nextField(value, pin2FocusNode);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(

                width: MediaQuery.of(context).size.width * 0.1,
                height: MediaQuery.of(context).size.height * 0.07,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    width: 1,
                    color: Colors.black,
                  ),
                ),
                child: TextFormField(
                  autofocus: true,
                  cursorColor: Color.fromARGB(255, 71, 54, 111),

                  obscureText: true,
                  style: TextStyle(fontSize: 24),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    nextField(value, pin2FocusNode);
                  },
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.1,
              height: MediaQuery.of(context).size.height * 0.07,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  width: 1,
                  color: Colors.black,
                ),
              ),
              child: TextFormField(
                autofocus: true,
                cursorColor: Color.fromARGB(255, 71, 54, 111),
                obscureText: true,
                style: TextStyle(fontSize: 24),
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  nextField(value, pin2FocusNode);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.1,
                height: MediaQuery.of(context).size.height * 0.07,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    width: 1,
                    color: Colors.black,
                  ),
                ),
                child: TextFormField(
                  autofocus: true,
                  cursorColor: Color.fromARGB(255, 71, 54, 111),
                  obscureText: true,
                  style: TextStyle(fontSize: 24),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    nextField(value, pin2FocusNode);
                  },
                ),
              ),
            ),
          ],
      ),
    ]),
        ));
  }
}
