import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seri_flutter_app/app-bar/app_bar.dart';
import 'package:sizer/sizer.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarWithText(context, 'About Us'),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 5.h),
            Text(
              '* Pluscrown is an e-commerce web portal where we thrive to provide educational related materials and stationary from local retailers and suppliers for the students to have easy access to educational products.',
              style: TextStyle(
                fontFamily: 'GothamMedium',
                fontSize: 10.sp,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 71, 54, 111),
              ),
            ),
            SizedBox(height: 2.h),
            Text(
              '* We provide all stream books for 11th & 12th stds. (for 8-10 and 11, 12)',
              style: TextStyle(
                fontFamily: 'GothamMedium',
                fontSize: 10.sp,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 71, 54, 111),
              ),
            ),
            SizedBox(height: 2.h),
            Text(
              '* We deliver the products at your door steps.',
              style: TextStyle(
                fontFamily: 'GothamMedium',
                fontSize: 10.sp,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 71, 54, 111),
              ),
            ),
            SizedBox(height: 2.h),
            Text(
              '* If you are facing any trouble finding any books or stationary then you Contact Us or mail us.',
              style: TextStyle(
                fontFamily: 'GothamMedium',
                fontSize: 10.sp,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 71, 54, 111),
              ),
            ),
            SizedBox(height: 2.h),
            Text(
              '* We strive to achieve customer satisfaction by completing easy user-friendly websites, Quick and user-friendly payment methods and easy tracking options.',
              style: TextStyle(
                fontFamily: 'GothamMedium',
                fontSize: 10.sp,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 71, 54, 111),
              ),
            ),
            SizedBox(height: 2.h),
            Text(
              'Thanks for visiting our website.',
              style: TextStyle(
                fontFamily: 'GothamMedium',
                fontSize: 10.sp,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 71, 54, 111),
              ),
            ),
            Spacer(),
            Container(
              height: 5.h,
              child: Row(
                children: [
                  Spacer(),
                  Image.asset('lib/assets/Logo/Plus Crown  2.png'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
