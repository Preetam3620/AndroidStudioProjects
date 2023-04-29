import 'package:flutter/material.dart';
import 'package:seri_flutter_app/contact-us/screens/contact_us.dart';
import 'package:seri_flutter_app/empty-wishlist/emptyWishListPage.dart';
import 'package:seri_flutter_app/homescreen/others/biography_screen.dart';
import 'package:seri_flutter_app/homescreen/others/books.dart';
import 'package:seri_flutter_app/homescreen/others/competitve_screen.dart';
import 'package:seri_flutter_app/homescreen/others/story_screen.dart';
import 'package:seri_flutter_app/homescreen/screens/home_screen.dart';
import 'package:seri_flutter_app/listing-pages/screens/12_std_page.dart';
import 'package:seri_flutter_app/listing-pages/screens/8_std_page.dart';
import 'package:seri_flutter_app/listing-pages/screens/9_10_std_page.dart';
import 'package:seri_flutter_app/login&signup/screens/login.dart';
import 'package:seri_flutter_app/my-orders/screens/myOrdersPage.dart';
import 'package:seri_flutter_app/show-view/models/showView.dart';
import 'package:sizer/sizer.dart';

import '../../My-Account/My_Account.dart';
import '../../policy/PrivacyPolicy.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 85.w,
      color: Colors.white,
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 5,
            child: Stack(
              children: [
                Column(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Container(
                        color: Color.fromARGB(255, 71, 54, 111),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Positioned.fill(
                  child: SafeArea(
                    child: Padding(
                      padding: EdgeInsets.all(2.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(new Radius.circular(14.w)),
                                border: Border.all(color: Colors.black38)),
                            child: CircleAvatar(
                              backgroundColor: Colors.white60,
                              radius: 14.w,
                              child: Image.asset('lib/assets/icons/profile - Copy.png'),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              // top: MediaQuery.of(context).size.height / 24,
                              left: MediaQuery.of(context).size.width / 25,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        'Hello, Ohm',
                                        style: TextStyle(
                                            fontFamily: 'GothamMedium',
                                            color: Colors.white,
                                            fontSize: 17.sp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'ohm1342@gmail.com',
                                        style:
                                            TextStyle(fontFamily: 'GothamMedium', color: Colors.white, fontSize: 10.sp),
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Delivery not available\nat this pincode',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'GothamMedium',
                                            fontSize: 12.sp,
                                            color: Colors.red.withOpacity(0.7),
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  dense: true,
                  title: Text(
                    'Home',
                    style: TextStyle(
                        fontFamily: 'GothamMedium',
                        fontSize: 3.h,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF23124A)),
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => HomePage()));
                  },
                ),
                Divider(color: Colors.black, height: 0),
                ListTile(
                  dense: true,
                  title: Text(
                    'Notebooks',
                    style: TextStyle(
                        fontFamily: 'GothamMedium',
                        fontSize: 3.h,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF23124A)),
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => ShowView()));
                  },
                ),
                ExpansionTile(
                  // trailing: Image.asset('assets/icons/downarrow1 - Copy.png'),
                  childrenPadding: EdgeInsets.only(left: 10),
                  title: Row(
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        color: Colors.green,
                        size: 30.0,
                      ),
                      Text(
                        '8-10th class',
                        style: TextStyle(
                            fontFamily: 'GothamMedium',
                            fontSize: 3.h,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF23124A)),
                      ),
                    ],
                  ),
                  children: [
                    ListTile(
                      dense: true,
                      title: Text(
                        '8th Standard',
                        style: TextStyle(
                            fontFamily: 'GothamMedium',
                            fontSize: 2.5.h,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF23124A)),
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (BuildContext context) => ListingPage1()));
                      },
                    ),
                    ListTile(
                      dense: true,
                      title: Text(
                        '9th Standard',
                        style: TextStyle(
                            fontFamily: 'GothamMedium',
                            fontSize: 2.8.h,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF23124A)),
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (BuildContext context) => ListingPage2()));
                      },
                    ),
                    ListTile(
                      dense: true,
                      title: Text(
                        '10th Standard',
                        style: TextStyle(
                            fontFamily: 'GothamMedium',
                            fontSize: 2.8.h,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF23124A)),
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (BuildContext context) => ListingPage2()));
                      },
                    ),
                  ],
                ),
                ExpansionTile(
                  // trailing: Image.asset('assets/icons/downarrow1 - Copy.png'),
                  childrenPadding: EdgeInsets.only(left: 20),
                  title: Text(
                    '11-12th class',
                    style: TextStyle(
                        fontFamily: 'GothamMedium',
                        fontSize: 3.h,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF23124A)),
                  ),
                  children: [
                    ListTile(
                      dense: true,
                      title: Text(
                        '11th Standard',
                        style: TextStyle(
                            fontFamily: 'GothamMedium',
                            fontSize: 2.8.h,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF23124A)),
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (BuildContext context) => ListingPage2()));
                      },
                    ),
                    ListTile(
                      dense: true,
                      title: Text(
                        '12th Standard',
                        style: TextStyle(
                            fontFamily: 'GothamMedium',
                            fontSize: 2.8.h,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF23124A)),
                      ),
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (BuildContext context) => ListingPage3()));
                      },
                    ),
                  ],
                ),
                ListTile(
                  dense: true,
                  title: Text(
                    'JEE/CET/NEET',
                    style: TextStyle(
                        fontFamily: 'GothamMedium',
                        fontSize: 3.h,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF23124A)),
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => Competitive()));
                  },
                ),
                ListTile(
                  dense: true,
                  title: Text(
                    'Story Tellers',
                    style: TextStyle(
                        fontFamily: 'GothamMedium',
                        fontSize: 3.h,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF23124A)),
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => Story()));
                  },
                ),
                ListTile(
                  dense: true,
                  title: Text(
                    'Biography Books',
                    style: TextStyle(
                        fontFamily: 'GothamMedium',
                        fontSize: 3.h,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF23124A)),
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => Biography()));
                  },
                ),
                ListTile(
                  dense: true,
                  title: Text(
                    'Stationary',
                    style: TextStyle(
                        fontFamily: 'GothamMedium',
                        fontSize: 3.h,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF23124A)),
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => Biography())); // TODO: route to stationary page
                  },
                ),
                Divider(color: Colors.black, height: 0),
                ListTile(
                  dense: true,
                  title: Text(
                    'My Orders',
                    style: TextStyle(
                        fontFamily: 'GothamMedium',
                        fontSize: 3.h,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF23124A)),
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => MyOrdersPage()));
                  },
                ),
                ListTile(
                  dense: true,
                  title: Text(
                    'Wishlist',
                    style: TextStyle(
                        fontFamily: 'GothamMedium',
                        fontSize: 3.h,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF23124A)),
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (BuildContext context) => EmptyWishListPage()));
                  },
                ),
                ListTile(
                  dense: true,
                  title: Text(
                    'My Account',
                    style: TextStyle(
                        fontFamily: 'GothamMedium',
                        fontSize: 3.h,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF23124A)),
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => MyAccount()));
                  },
                ),
                Divider(color: Colors.black, height: 0),
                ListTile(
                  dense: true,
                  title: Text(
                    'Privacy Policy',
                    style: TextStyle(
                        fontFamily: 'GothamMedium',
                        fontSize: 3.h,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF23124A)),
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => PrivacyPolicy()));
                  },
                ),
                ListTile(
                  dense: true,
                  title: Text(
                    'Contact Us',
                    style: TextStyle(
                        fontFamily: 'GothamMedium',
                        fontSize: 3.h,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF23124A)),
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => ContactUs()));
                  },
                ),
                ListTile(
                  dense: true,
                  title: Text(
                    'Log Out',
                    style: TextStyle(
                        fontFamily: 'GothamMedium',
                        fontSize: 3.h,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF23124A)),
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => LoginPage()));
                  },
                ),
                SizedBox(
                  height: 2.h,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
