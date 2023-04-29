import 'package:flutter/material.dart';
import 'package:seri_flutter_app/common/components/CustomDrawer.dart';
import 'package:seri_flutter_app/common/screens/empty-cart/emptyCartPage.dart';
import 'package:seri_flutter_app/homescreen/screens/body.dart';
import 'package:seri_flutter_app/homescreen/screens/drawer.dart';

import '../../constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: kDefaultPadding),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => EmptyCartPage()));
              },
              child: Image.asset(
                'lib/assets/images/cart_white.png',
                //height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.08,
              ),
            ),
          ),
        ],
        titleSpacing: 0,
        title: Image.asset(
          'lib/assets/images/Logo.png',
          height: MediaQuery.of(context).size.height * 0.08,
        ),
      ),
      drawer: CustomDrawer(),
      //drawer: MyDrawer(),
      body: Body(),
    );
  }
}
