import 'package:flutter/material.dart';
import 'package:seri_flutter_app/app-bar/app_bar.dart';
import 'address-book.dart';
import 'address-book-page.dart';

class Address extends StatefulWidget {
  @override
  _AddressState createState() => _AddressState();
}

class _AddressState extends State<Address> {
  final formKey = GlobalKey<FormState>();

  TextEditingController nameTextEditingController = new TextEditingController();
  TextEditingController numberTextEditingController =
      new TextEditingController();
  TextEditingController pinCodeTextEditingController =
      new TextEditingController();
  TextEditingController cityTextEditingController = new TextEditingController();
  TextEditingController flatNoTextEditingController =
      new TextEditingController();
  TextEditingController areaTextEditingController = new TextEditingController();
  TextEditingController landmarkTextEditingController =
      new TextEditingController();
  TextEditingController districtTextEditingController =
      new TextEditingController();

  int _radioValue1 = 0;

  void _handleRadioValueChange1(int value) {
    setState(() {
      _radioValue1 = value;

      switch (_radioValue1) {
        case 0:
          break;
        case 1:
          break;
        case 2:
          break;
      }
    });
  }

  bool checkValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBarWithText(context, 'Add Address'),
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
                left: 11.0, right: 11, top: 18, bottom: 18),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Contact Info",
                          style: TextStyle(
                              color: Color.fromARGB(255, 71, 54, 111),
                              fontFamily: 'GothamMedium',
                              fontSize: MediaQuery.of(context).size.width / 15,
                              fontWeight: FontWeight.bold))),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border:
                            Border.all(color: Color.fromARGB(255, 71, 54, 111)),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: TextFormField(
                        // keyboardType: TextInputType.multiline,
                        maxLines: 1,
                        textAlign: TextAlign.left,
                        validator: (val) {
                          return val.isEmpty || val.length < 2
                              ? "Please Provide valid username"
                              : null;
                        },
                        controller: nameTextEditingController,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: MediaQuery.of(context).size.width / 19,
                          fontFamily: 'GothamMedium',
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Name',
                          hintStyle: TextStyle(
                            color: Color.fromARGB(255, 71, 54, 111),
                            fontSize: MediaQuery.of(context).size.width / 19,
                            fontFamily: 'GothamMedium',
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border:
                            Border.all(color: Color.fromARGB(255, 71, 54, 111)),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: TextFormField(
                        // keyboardType: TextInputType.multiline,
                        maxLines: 1,
                        textAlign: TextAlign.left,
                        validator: (val) {
                          return RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)')
                                  .hasMatch(val)
                              ? null
                              : "Please provide valid number";
                        },
                        controller: numberTextEditingController,
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'GothamMedium',
                            fontSize: MediaQuery.of(context).size.width / 19),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Phone Number',
                          hintStyle: TextStyle(
                            color: Color.fromARGB(255, 71, 54, 111),
                            fontFamily: 'GothamMedium',
                            fontSize: MediaQuery.of(context).size.width / 19,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Address Info",
                          style: TextStyle(
                              color: Color.fromARGB(255, 71, 54, 111),
                              fontFamily: 'GothamMedium',
                              fontSize: MediaQuery.of(context).size.width / 15,
                              fontWeight: FontWeight.bold))),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 2.5,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color: Color.fromARGB(255, 71, 54, 111)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: TextFormField(
                            // keyboardType: TextInputType.multiline,
                            maxLines: 1,
                            textAlign: TextAlign.left,
                            validator: (val) {
                              return RegExp(r'(^[1-9][0-9]{5}$)').hasMatch(val)
                                  ? null
                                  : "Please provide valid number";
                            },
                            controller: pinCodeTextEditingController,
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'GothamMedium',
                                fontSize:
                                    MediaQuery.of(context).size.width / 19),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'PinCode',
                              hintStyle: TextStyle(
                                color: Color.fromARGB(255, 71, 54, 111),
                                fontFamily: 'GothamMedium',
                                fontSize:
                                    MediaQuery.of(context).size.width / 19,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 2.3,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color: Color.fromARGB(255, 71, 54, 111)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: TextFormField(
                            // keyboardType: TextInputType.multiline,
                            maxLines: 1,
                            textAlign: TextAlign.left,
                            validator: (val) {
                              return val.isEmpty || val.length < 2
                                  ? "Please Provide valid city"
                                  : null;
                            },
                            controller: cityTextEditingController,
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'GothamMedium',
                                fontSize:
                                    MediaQuery.of(context).size.width / 19),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'City',
                              hintStyle: TextStyle(
                                color: Color.fromARGB(255, 71, 54, 111),
                                fontFamily: 'GothamMedium',
                                fontSize:
                                    MediaQuery.of(context).size.width / 19,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border:
                            Border.all(color: Color.fromARGB(255, 71, 54, 111)),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: TextFormField(
                        // keyboardType: TextInputType.multiline,
                        maxLines: 1,
                        textAlign: TextAlign.left,
                        validator: (val) {
                          return val.isEmpty || val.length < 2
                              ? "Please Provide valid District"
                              : null;
                        },
                        controller: districtTextEditingController,
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'GothamMedium',
                            fontSize: MediaQuery.of(context).size.width / 19),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'District',
                          hintStyle: TextStyle(
                            color: Color.fromARGB(255, 71, 54, 111),
                            fontFamily: 'GothamMedium',
                            fontSize: MediaQuery.of(context).size.width / 19,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border:
                            Border.all(color: Color.fromARGB(255, 71, 54, 111)),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: TextFormField(
                        // keyboardType: TextInputType.multiline,
                        maxLines: 1,
                        textAlign: TextAlign.left,
                        validator: (val) {
                          return val.isEmpty
                              ? "Please Provide Flat No / Building Name "
                              : null;
                        },
                        controller: flatNoTextEditingController,
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'GothamMedium',
                            fontSize: MediaQuery.of(context).size.width / 19),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Flat No / Building Name',
                          hintStyle: TextStyle(
                            color: Color.fromARGB(255, 71, 54, 111),
                            fontFamily: 'GothamMedium',
                            fontSize: MediaQuery.of(context).size.width / 19,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border:
                            Border.all(color: Color.fromARGB(255, 71, 54, 111)),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: TextFormField(
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        textAlign: TextAlign.left,
                        validator: (val) {
                          return val.isEmpty
                              ? "Please Provide Locality / Area / Street "
                              : null;
                        },
                        controller: areaTextEditingController,
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'GothamMedium',
                            fontSize: MediaQuery.of(context).size.width / 19),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Locality / Area / Street',
                          hintStyle: TextStyle(
                            color: Color.fromARGB(255, 71, 54, 111),
                            fontFamily: 'GothamMedium',
                            fontSize: MediaQuery.of(context).size.width / 19,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border:
                            Border.all(color: Color.fromARGB(255, 71, 54, 111)),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: TextFormField(
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        textAlign: TextAlign.left,
                        controller: landmarkTextEditingController,
                        style: TextStyle(
                            fontFamily: 'GothamMedium',
                            color: Colors.black,
                            fontSize: MediaQuery.of(context).size.width / 19),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Landmark (Optional)',
                          hintStyle: TextStyle(
                            color: Color.fromARGB(255, 71, 54, 111),
                            fontFamily: 'GothamMedium',
                            fontSize: MediaQuery.of(context).size.width / 19,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Type of Address",
                          style: TextStyle(
                              fontFamily: 'GothamMedium',
                              color: Color.fromARGB(255, 71, 54, 111),
                              fontSize: MediaQuery.of(context).size.width / 15,
                              fontWeight: FontWeight.bold))),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new Radio(
                        activeColor: Color.fromARGB(255, 71, 54, 111),
                        value: 0,
                        groupValue: _radioValue1,
                        onChanged: _handleRadioValueChange1,
                      ),
                      new Text('Home',
                          style: TextStyle(
                              fontFamily: 'GothamMedium',
                              color: Color.fromARGB(255, 71, 54, 111),
                              fontSize:
                                  MediaQuery.of(context).size.width / 20)),
                      new Radio(
                        activeColor: Color.fromARGB(255, 71, 54, 111),
                        value: 1,
                        groupValue: _radioValue1,
                        onChanged: _handleRadioValueChange1,
                      ),
                      new Text('Office',
                          style: TextStyle(
                              fontFamily: 'GothamMedium',
                              color: Color.fromARGB(255, 71, 54, 111),
                              fontSize:
                                  MediaQuery.of(context).size.width / 20)),
                      new Radio(
                        activeColor: Color.fromARGB(255, 71, 54, 111),
                        value: 2,
                        groupValue: _radioValue1,
                        onChanged: _handleRadioValueChange1,
                      ),
                      new Text('Other',
                          style: TextStyle(
                              fontFamily: 'GothamMedium',
                              color: Color.fromARGB(255, 71, 54, 111),
                              fontSize:
                                  MediaQuery.of(context).size.width / 20)),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: SizedBox(
                            height: 8,
                            width: 8,
                            child: Transform.scale(
                              scale: 1,
                              child: Checkbox(
                                value: checkValue,
                                activeColor: Color.fromARGB(255, 71, 54, 111),
                                onChanged: (newValue) {
                                  setState(() {
                                    checkValue = newValue;
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Mark as default Address",
                            style: TextStyle(
                                fontFamily: 'GothamMedium',
                                color: Color.fromARGB(255, 71, 54, 111),
                                fontSize:
                                    MediaQuery.of(context).size.width / 19)),
                      ]),
                  SizedBox(
                    width: 18,
                  ),
                  ElevatedButton(
                    child: Text("Save Address",
                        style: TextStyle(
                            fontFamily: 'GothamMedium',
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.width / 19)),
                    onPressed: () {
                      if (formKey.currentState.validate())
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AddressBookPage()));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 71, 54, 111),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
