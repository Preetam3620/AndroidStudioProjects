import 'package:flutter/material.dart';
import 'package:seri_flutter_app/homescreen/models/product_class.dart';

import '../../constants.dart';

class ProductList extends StatelessWidget {
  final Product myProduct;

  const ProductList({this.myProduct});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      // constraints: BoxConstraints(
      //   minHeight: size.height / 0.50,
      //   maxHeight: size.height / 0.50,
      // ),
      margin: EdgeInsets.only(
        top: kDefaultPadding,
        //  bottom: kDefaultPadding,
        left: kDefaultPadding,
      ),
      // height: size.height / 0.50,
      width: size.width * 0.4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: kPrimaryColor.withOpacity(0.5),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: kDefaultPadding / 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(kDefaultPadding * 0.1),
                  height: 20,
                  decoration: BoxDecoration(
                    color: myProduct.arrival == 'New' ? Colors.red : Colors.green,
                  ),
                  child: Center(
                    child: Text(
                      myProduct.arrival,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: kDefaultPadding / 2),
                  child: Image.asset(
                    'lib/assets/images/wishlist.png',
                    width: size.width * 0.06,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: size.height / 55),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: kDefaultPadding / 2,
              // vertical: kDefaultPadding / 2
            ),
            child: Container(
              height: size.height * 0.15,
              decoration: BoxDecoration(
                border: Border.all(
                  color: kPrimaryColor.withOpacity(0.5),
                ),
              ),
            ),
          ),
          SizedBox(height: size.height / 55),
          // Padding(
          //   padding: EdgeInsets.symmetric(
          //     horizontal: kDefaultPadding / 2,
          //   ),
          //  child:
          Text(
            myProduct.name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: kPrimaryColor,
              fontSize: size.width * 0.03,
              fontWeight: FontWeight.bold,
            ),
          ),
          //   ),
          Text(
            myProduct.category,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: kPrimaryColor,
              fontSize: size.width * 0.03,
              fontWeight: FontWeight.bold,
            ),
          ),
          //  Padding(
          // padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 6),
          //  child:
          RichText(
            text: TextSpan(
              text: 'Rs. ',
              style: TextStyle(
                color: kPrimaryColor,
                fontWeight: FontWeight.bold,
                fontSize: size.width * 0.03,
              ),
              children: [
                TextSpan(text: (myProduct.originalPrice - (myProduct.discount / 100)).toString() + " "),
                TextSpan(
                  text: myProduct.originalPrice.toString() + " ",
                  style: TextStyle(
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
                TextSpan(
                  text: myProduct.discount.toString() + '%',
                  style: TextStyle(
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
          //  ),
        ],
      ),
    );
  }
}
