import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seri_flutter_app/app-bar/app_bar.dart';

class Terms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBarWithText(context, 'Terms & Conditions'),
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: Column(
                children: [
                  SizedBox(height: 15),
                  Container(
                    child: Text(
                      "-- welcome to pluscrown --",
                      style:
                      TextStyle(
                          fontFamily: 'GothamMedium',
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width / 22,
                          color: Color.fromARGB(255, 71, 54, 111)),
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    child: Text(
                      '''* All applicable terms and regulations are according to information technology act 2000.
* By accessing this website you agree to be bound by these Web Terms and Conditions. 
* We request you to read this carefully.
* You can visit websites and services. However, downloading or modifying any portion of the website is strictly prohibited, And you can not duplicate or copy.
* All rights, including copyright and the trademark "Pluscrown" in this website are owned by or licensed to Pluscrown PRIVATE LIMITED.
* All our communication would be conducted by e-mails or by posting notices and messages on the website.
* If you believe that your intellectual property rights have been unfairly used which gives rise to security concerns, please contact us for the correct information or inquiry.
* The website is available only to those who can legally contract under applicable law. If you are under 18, you are prohibited from using purchasing contracting from this website.

                      ''',
                      style:
                      TextStyle(
                          fontFamily: 'GothamMedium',
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width / 22,
                          color: Color.fromARGB(255, 71, 54, 111)),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      alignment: Alignment.bottomRight,
                      width: MediaQuery.of(context).size.width/2,
                      child: Image.asset("lib/assets/images/PlusCrown.png"),
                    )
                  )
                ],
              ),
            )));
  }
}
