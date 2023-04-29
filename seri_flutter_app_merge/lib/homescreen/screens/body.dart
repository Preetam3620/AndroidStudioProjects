import 'package:flutter/material.dart';
import 'package:seri_flutter_app/homescreen/data/product_data.dart';
import 'package:seri_flutter_app/homescreen/data/product_list.dart';
import 'package:seri_flutter_app/homescreen/data/title.dart';
import 'package:seri_flutter_app/homescreen/models/product_class.dart';

import '../../constants.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: size.height * 0.1,
              decoration: BoxDecoration(
                color: kPrimaryColor,
              ),
            ),
            Positioned(
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(
                  horizontal: kDefaultPadding,
                  vertical: kDefaultPadding * 0.8,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: kDefaultPadding * 0.5,
                ),
                height: size.height * 0.05,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        right: kDefaultPadding,
                      ),
                      child: Image.asset(
                        'lib/assets/images/search.png',
                        width: size.width * 0.06,
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          // contentPadding:
                          //     EdgeInsets.only(top: kDefaultPadding * 0.05),
                          hintText: "SEARCH PRODUCTS",
                          hintStyle: TextStyle(
                            fontFamily: 'GothamMedium',
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),
                    Image.asset(
                      'lib/assets/images/mic.png',
                      width: size.width * 0.06,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        Expanded(
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: kDefaultPadding,
                  vertical: kDefaultPadding,
                ),
                height: size.height * 0.2,
                width: size.width,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: kPrimaryColor.withOpacity(0.5),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      right: kDefaultPadding,
                      bottom: kDefaultPadding,
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: size.height * 0.05,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: kPrimaryColor,
                          ),
                          child: Center(
                            child: Text(
                              'Buy Now',
                              style: TextStyle(
                                fontFamily: 'GothamMedium',
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              TitleHome(title: 'New arrivals'),
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
                title: 'Deal of the Day',
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
                title: 'Best Sellers',
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
                title: 'Recently Viewed',
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
                title: 'Shop By Brand',
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: size.height * 0.06,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: brands.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(
                            // top: kDefaultPadding,
                            // bottom: kDefaultPadding,
                            right: kDefaultPadding,
                            left: kDefaultPadding),
                        child: Image.asset(
                          brands[index],
                          // width: size.width * 0.3,
                          fit: BoxFit.fitHeight,
                        ),
                      );
                    },
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: kDefaultPadding * 2,
                ),
                height: 2,
                color: kPrimaryColor,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: kDefaultPadding,
                ),
                child: Center(
                  child: Text(
                    '" An Investment in knowledge pays best interest "',
                    style: TextStyle(
                      fontFamily: 'GothamMedium',
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
