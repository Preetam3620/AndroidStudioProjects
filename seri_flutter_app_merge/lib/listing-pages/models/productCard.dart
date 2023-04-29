import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Widget productCard(BuildContext context, int index, List productList) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      constraints: BoxConstraints(minHeight: 250, maxHeight: 250),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black54),
        borderRadius: BorderRadius.circular(20),
      ),
      width: 175,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                productList[index].highlight != null
                    ? Container(
                        decoration: BoxDecoration(
                            color: productList[index].highlight == 'Trending' ? Colors.green : Colors.red),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 2.5, horizontal: 5),
                          child: Text(
                            productList[index].highlight,
                            style: TextStyle(
                              fontFamily: 'GothamMedium',
                              color: Colors.white,
                              fontSize: 7.sp,
                            ),
                          ),
                        ),
                      )
                    : Container(),
                Spacer(),
                Container(
                  height: 3.h,
                  child: Image.asset('lib/assets/icons/wishlist.png'),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.black26)),
              height: 100,
              width: 140,
              // child: Image(),
            ),
            Text(
              productList[index].name,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'GothamMedium',
                color: Color.fromARGB(255, 71, 54, 111),
              ),
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                      text:
                          'Rs. ${productList[index].price - (productList[index].price * productList[index].discount / 100)}  ',
                      style: TextStyle(
                        fontFamily: 'GothamMedium',
                      )),
                  TextSpan(
                    text: '${productList[index].price}',
                    style: TextStyle(fontFamily: 'GothamMedium', decoration: TextDecoration.lineThrough),
                  ),
                  TextSpan(
                    text: '  ${productList[index].discount}%',
                    style: TextStyle(fontFamily: 'GothamMedium', color: Colors.green),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'GothamMedium',
                color: Color.fromARGB(255, 71, 54, 111),
              ),
            )
          ],
        ),
      ),
    ),
  );
}
