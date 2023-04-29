import 'package:flutter/material.dart';
import 'package:seri_flutter_app/common/components/CustomDrawer.dart';
import 'package:seri_flutter_app/common/screens/empty-cart/emptyCartPage.dart';
import 'package:seri_flutter_app/homescreen/data/product_data.dart';
import 'package:seri_flutter_app/homescreen/data/product_list.dart';
import 'package:seri_flutter_app/homescreen/data/title.dart';
import 'package:seri_flutter_app/homescreen/models/product_class.dart';

import '../../constants.dart';
import '../screens/drawer.dart';

class Competitive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          elevation: 0,
          actions: [
            Padding(
              padding: EdgeInsets.only(right: kDefaultPadding),
              child: Image.asset(
                'lib/assets/images/search_white.png',
                //height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.08,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => EmptyCartPage()));
              },
              child: Padding(
                padding: EdgeInsets.only(right: kDefaultPadding),
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
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 0.5),
              height: size.height * 0.15,
              child: Image.asset('lib/assets/images/competitive.png'),
            ),
            Expanded(
              child: ListView(
                children: [
                  TitleHome(
                    title: 'Prepare for JEE',
                  ),
                  Container(
                    height: size.height * 0.35,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: products.length,
                      itemBuilder: (context, int index) {
                        Product product = products[index];
                        return ProductList(myProduct: product);
                      },
                    ),
                  ),
                  TitleHome(
                    title: 'Prepare for NEET',
                  ),
                  Container(
                    height: size.height * 0.35,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: products.length,
                      itemBuilder: (context, int index) {
                        Product product = products[index];
                        return ProductList(myProduct: product);
                      },
                    ),
                  ),
                  TitleHome(
                    title: 'Prepare for CET',
                  ),
                  Container(
                    height: size.height * 0.35,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: products.length,
                      itemBuilder: (context, int index) {
                        Product product = products[index];
                        return ProductList(myProduct: product);
                      },
                    ),
                  ),
                  TitleHome(
                    title: 'Helping Hands',
                  ),
                  Container(
                    height: size.height * 0.35,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: products.length,
                      itemBuilder: (context, int index) {
                        Product product = products[index];
                        return ProductList(myProduct: product);
                      },
                    ),
                  ),
                  SizedBox(height: 5,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
