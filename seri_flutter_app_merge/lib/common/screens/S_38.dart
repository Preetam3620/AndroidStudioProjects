import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Error404 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(left: 6.w, top: 3.h, right: 6.w),
                width: MediaQuery.of(context).size.width * 0.88,
                height: MediaQuery.of(context).size.height * 0.8,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color.fromARGB(255, 71, 54, 111),
                  ),
                ),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 8.h,
                      left: 20.w,
                      child: Text(
                        'Error  404',
                        style: TextStyle(
                          fontFamily: 'GothamMedium',
                          fontSize: 30.0.sp,
                          letterSpacing: 0.7.w,
                          color: Color.fromARGB(255, 71, 54, 111),
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 15.h,
                      left: 20.w,
                      child: Text(
                        'Page not found',
                        style: TextStyle(
                          fontFamily: 'GothamMedium',
                          fontSize: 20.0.sp,
                          color: Color.fromARGB(255, 71, 54, 111),
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.5.w,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 30.h,
                      left: 20.w,
                      child: MaterialButton(
                        minWidth: MediaQuery.of(context).size.width * 0.5,
                        height: 60,
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => null));
                        },
                        color: Color.fromARGB(255, 71, 54, 111),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        child: Text(
                          "Continue Shopping",
                          style: TextStyle(
                              fontFamily: 'GothamMedium',
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 18),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 20.h,
                      left: 5.w,
                      child: Image(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: MediaQuery.of(context).size.height * 0.8,
                        image: AssetImage('lib/assets/images/fdnyt.png'),
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
