import 'package:flutter/material.dart';
import 'package:seri_flutter_app/app-bar/app_bar.dart';

import '../../constants.dart';

class Orders extends StatefulWidget {
  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBarWithText(context, 'Order Details'),
      // drawer: MyDrawer(),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Order ID: ' + ' 4863964',
                  style: TextStyle(fontSize: 15),
                ),
                Container(
                  width: size.width,
                  padding: EdgeInsets.symmetric(
                    vertical: kDefaultPadding / 2,
                    horizontal: kDefaultPadding / 2,
                  ),
                  margin: EdgeInsets.symmetric(
                    vertical: kDefaultPadding,
                  ),
                  height: size.height * 0.2,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: kPrimaryColor.withOpacity(0.1),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        width: size.width * 0.25,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: kPrimaryColor.withOpacity(0.1),
                          ),
                        ),
                      ),
                      Positioned(
                        top: size.height * 0.05,
                        left: kDefaultPadding + size.width * 0.25,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Rs ' + '599.00',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Balbharti Textbook',
                            ),
                            Text(
                              'English medium 8th Sanskrit',
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: 0,
                        top: 0,
                        child: Row(
                          children: [
                            Image.asset(
                              'lib/assets/images/download_invoice.png',
                              width: size.width * 0.05,
                            ),
                            Text(
                              'Download Invoice',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Stack(
                  children: [
                    Column(
                      children: [
                        orderStatus(
                            'Order Approved', "Fri, 02nd Mar'22", true, 1),
                        orderStatus(
                            'Order delivered', "Fri, 08th Mar'22", false, 2),
                        orderStatus('Return', "Fri, 09th Mar'22", false, 3),
                        orderStatus(
                            'Return Approved', "Fri, 09th Mar'22", false, 4),
                        orderStatus(
                            'Pickup', "Expected by, 12th Mar'22", false, 5),
                        orderStatus(
                            'Refund', "Expected by, 15th Mar'22", false, 6),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: kDefaultPadding,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: kDefaultPadding / 2,
                  ),
                  width: size.width,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: kPrimaryColor.withOpacity(0.5),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Need help ?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container orderStatus(String status, String date, bool isActive, int index) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isActive ? kPrimaryColor : Colors.white,
                  border: Border.all(
                    color: isActive ? Colors.transparent : kPrimaryColor,
                    width: 3,
                  ),
                ),
              ),
              index == 6
                  ? Container()
                  : Container(
                      height: 60,
                      width: 4,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: isActive ? kPrimaryColor : Colors.white,
                        border: Border.all(
                          color: kPrimaryColor,
                        ),
                      ),
                    )
            ],
          ),
          SizedBox(
            width: 50,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                status,
              ),
              Text(date),
            ],
          )
        ],
      ),
    );
  }
}
