import 'package:flutter/material.dart';
import 'package:seri_flutter_app/common/screens/empty-cart/emptyCartPage.dart';
import 'package:sizer/sizer.dart';

AppBar buildAppBarWithText(BuildContext context, String _title) {
  return AppBar(
    backgroundColor: Color.fromARGB(255, 71, 54, 111),
    leading: GestureDetector(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Image(
          image: AssetImage('lib/assets/icons/leftarrowwhite.png'),
        ),
      ),
    ),
    title: Text(
      _title,
      style: TextStyle(fontFamily: 'GothamMedium',fontSize: 16.sp),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {},
              child: Image(
                image: AssetImage('lib/assets/icons/search3.png'),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => EmptyCartPage()));
              },
              child: Image(
                image: AssetImage('lib/assets/icons/cart1.png'),
              ),
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    ],
  );
}
