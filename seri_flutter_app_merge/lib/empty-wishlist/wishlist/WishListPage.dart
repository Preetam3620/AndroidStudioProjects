import 'package:flutter/material.dart';
import 'package:seri_flutter_app/app-bar/app_bar.dart';
import 'wish_list.dart';

import 'package:google_fonts/google_fonts.dart';

class WishListPage extends StatefulWidget {
  @override
  _WishListPageState createState() => _WishListPageState();
}

class _WishListPageState extends State<WishListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarWithText(context, 'Wishlist'),
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 11.0, right:11, top: 18, bottom: 18),
          child:
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(child: WishList(),),
            ],
          )
        ),
      ),
    );
  }
}
