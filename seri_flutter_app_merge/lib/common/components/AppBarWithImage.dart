import 'package:flutter/material.dart';
import 'package:seri_flutter_app/common/screens/empty-cart/emptyCartPage.dart';
import 'package:sizer/sizer.dart';

AppBar buildAppBarWithImage(BuildContext context) {
  return AppBar(
    automaticallyImplyLeading: true,
    backgroundColor: Color.fromARGB(255, 71, 54, 111),
    title: Image.asset(
      'lib/assets/Logo/Plus Crown 1.png',
      fit: BoxFit.cover,
      height: 50,
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
