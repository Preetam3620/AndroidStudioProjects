import 'package:flutter/material.dart';
import 'address-book.dart';
import 'package:seri_flutter_app/app-bar/app_bar.dart';
import 'add_address.dart';

import 'package:google_fonts/google_fonts.dart';

class AddressBookPage extends StatefulWidget {
  @override
  _AddressBookPageState createState() => _AddressBookPageState();
}

class _AddressBookPageState extends State<AddressBookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarWithText(context, 'Address Book'),
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.only(left: 11.0, right:11, top: 18, bottom: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: AddressBook(),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Address()));
                  },
                  child: Row(
                    children: [
                      Container(
                          child: Icon(
                        Icons.add,
                        color: Color.fromARGB(255, 71, 54, 111),
                        size: MediaQuery.of(context).size.width / 23,
                      )),
                      SizedBox(width: 4),
                      Text("Add new Address",
                          style: TextStyle(
                            fontFamily: 'GothamMedium',
                                  color: Color.fromARGB(255, 71, 54, 111),
                              fontSize: MediaQuery.of(context).size.width / 23,)),
                    ],
                  ),
                ),
                SizedBox(height: 5),
              ],
            )),
      ),
    );
  }
}
