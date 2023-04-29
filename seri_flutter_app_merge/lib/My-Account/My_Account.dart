import 'package:flutter/material.dart';
import 'package:seri_flutter_app/app-bar/app_bar.dart';
import 'package:seri_flutter_app/contact-us/screens/aboutUsPage.dart';
import 'package:seri_flutter_app/faq/screens/faq_screen.dart';
import 'package:seri_flutter_app/homescreen/others/update_screen.dart';
import 'package:seri_flutter_app/policy/T&C.dart';
import 'package:seri_flutter_app/policy/orderCancellation.dart';
import 'package:seri_flutter_app/return&exchange/screens/return_and_exchange_policy.dart';

import '../address/screens/address-book-page.dart';
import '../cart/carts.dart';
import '../cart/order-confirmation.dart';

class MyAccount extends StatefulWidget {
  final name;
  final email;
  final number;
  final image;

  MyAccount({this.name, this.email, this.number, this.image});

  @override
  _MyAccountState createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBarWithText(context, 'My Account'),
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 11.0, right: 11, top: 18, bottom: 18),
                child: Card(
                  child: Container(
                    //height: 80,
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(
                          "lib/assets/images/profile.png",
                        ),
                        radius: MediaQuery.of(context).size.width / 13,
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Ohm Chadwik",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 71, 54, 111),
                                  fontFamily: 'GothamMedium',
                                  fontSize:
                                      MediaQuery.of(context).size.width / 18)),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => Update()));
                            },
                            child: Text('Edit',
                                style: TextStyle(
                                    fontFamily: 'GothamMedium',
                                    color: Color.fromARGB(255, 71, 54, 111),
                                    fontSize:
                                        MediaQuery.of(context).size.width /
                                            25)),
                          ),
                        ],
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('omchadwick@gmail.com',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 71, 54, 111),
                                  fontFamily: 'GothamMedium',
                                  fontSize:
                                      MediaQuery.of(context).size.width / 25)),
                          Text('8679645236',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 71, 54, 111),
                                  fontFamily: 'GothamMedium',
                                  fontSize:
                                      MediaQuery.of(context).size.width / 25))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0, left: 8),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Cart()));
                      },
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Orders",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 71, 54, 111),
                                    fontFamily: 'GothamMedium',
                                    fontSize:
                                        MediaQuery.of(context).size.width /
                                            20)),
                            Icon(Icons.arrow_forward_ios_outlined,
                                color: Color.fromARGB(255, 71, 54, 111)),
                          ]),
                    ),
                  ),
                  Divider(
                    color: Color.fromARGB(255, 71, 54, 111),
                    height: 10,
                    thickness: 0.5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12, left: 12),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AddressBookPage()));
                      },
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Address Book",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 71, 54, 111),
                                    fontFamily: 'GothamMedium',
                                    fontSize:
                                        MediaQuery.of(context).size.width /
                                            20)),
                            Icon(Icons.arrow_forward_ios_outlined,
                                color: Color.fromARGB(255, 71, 54, 111)),
                          ]),
                    ),
                  ),
                  Divider(
                    color: Color.fromARGB(255, 71, 54, 111),
                    height: 10,
                    thickness: 0.5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12.0, left: 12),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AboutUsPage()));
                      },
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("About Us",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 71, 54, 111),
                                    fontFamily: 'GothamMedium',
                                    fontSize:
                                        MediaQuery.of(context).size.width /
                                            20)),
                            Icon(Icons.arrow_forward_ios_outlined,
                                color: Color.fromARGB(255, 71, 54, 111)),
                          ]),
                    ),
                  ),
                  Divider(
                    color: Color.fromARGB(255, 71, 54, 111),
                    height: 10,
                    thickness: 0.5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12.0, left: 12),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Terms()));
                      },
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Terms and Conditions",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 71, 54, 111),
                                    fontFamily: 'GothamMedium',
                                    fontSize:
                                        MediaQuery.of(context).size.width /
                                            20)),
                            Icon(Icons.arrow_forward_ios_outlined,
                                color: Color.fromARGB(255, 71, 54, 111)),
                          ]),
                    ),
                  ),
                  Divider(
                    color: Color.fromARGB(255, 71, 54, 111),
                    height: 10,
                    thickness: 0.5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12.0, left: 12),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ReturnAndExchangePolicy()));
                      },
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Return and Exchange Policy",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 71, 54, 111),
                                    fontFamily: 'GothamMedium',
                                    fontSize:
                                        MediaQuery.of(context).size.width /
                                            20)),
                            Icon(Icons.arrow_forward_ios_outlined,
                                color: Color.fromARGB(255, 71, 54, 111)),
                          ]),
                    ),
                  ),
                  Divider(
                    color: Color.fromARGB(255, 71, 54, 111),
                    height: 10,
                    thickness: 0.5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12.0, left: 12),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OrderCancellation()));
                      },
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Order Cancellation Policy",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 71, 54, 111),
                                    fontFamily: 'GothamMedium',
                                    fontSize:
                                        MediaQuery.of(context).size.width /
                                            20)),
                            Icon(Icons.arrow_forward_ios_outlined,
                                color: Color.fromARGB(255, 71, 54, 111)),
                          ]),
                    ),
                  ),
                  Divider(
                    color: Color.fromARGB(255, 71, 54, 111),
                    height: 10,
                    thickness: 0.5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12.0, left: 12),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FAQSection()));
                      },
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("FAQ's",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 71, 54, 111),
                                    fontFamily: 'GothamMedium',
                                    fontSize:
                                        MediaQuery.of(context).size.width /
                                            20)),
                            Icon(Icons.arrow_forward_ios_outlined,
                                color: Color.fromARGB(255, 71, 54, 111)),
                          ]),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
