import 'package:flutter/material.dart';
import 'package:seri_flutter_app/app-bar/app_bar.dart';
import 'package:sizer/sizer.dart';

class EmptyCartPage extends StatelessWidget {
  MediaQueryData queryData;

  @override
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBarWithText(context, 'Cart'),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 30.h,
                  child: Image.asset('lib/assets/icons/empty cart.png'),
                ),
                Text(
                  'Your Cart is Empty',
                  style: TextStyle(
                    fontFamily: 'GothamMedium',
                    color: Color.fromARGB(255, 71, 54, 111),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 2.h),
                Text(
                  'Add Items to your cart',
                  style: TextStyle(
                    fontFamily: 'GothamMedium',
                    color: Color.fromARGB(255, 71, 54, 111),
                    fontSize: 12.sp,
                  ),
                ),
                SizedBox(height: 2.h),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 71, 54, 111),
                    shape: const BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    minimumSize: Size((queryData.size.width / 2),
                        (queryData.size.height / 25)),
                  ),
                  // style: ButtonStyle(elevation: ),
                  onPressed: () {},
                  child: Text('Shop Now', style: TextStyle(fontFamily: 'GothamMedium',),),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
