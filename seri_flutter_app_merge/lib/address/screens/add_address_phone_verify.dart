import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:seri_flutter_app/app-bar/app_bar.dart';
import 'package:sizer/sizer.dart';

class AddressPhoneVerify extends StatefulWidget {
  @override
  _AddressPhoneVerifyState createState() => _AddressPhoneVerifyState();
}

class _AddressPhoneVerifyState extends State<AddressPhoneVerify> {
  final FocusScopeNode _node = FocusScopeNode();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  MediaQueryData queryData;
  String mobile;

  @override
  void dispose() {
    _node.dispose();
    super.dispose();
  }

  String validateMobile(String value) {
    String pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return 'Please enter mobile number';
    } else if (!regExp.hasMatch(value)) {
      return 'Please enter valid mobile number';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);

    return GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: Scaffold(
          appBar: buildAppBarWithText(context, 'Add Address'),
          backgroundColor: Color.fromARGB(255, 249, 249, 249),
          body: SafeArea(
            child: Container(
              padding: EdgeInsets.fromLTRB(20, 25, 10, 10),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 10, 10),
                    child: Text(
                      'Cash on Delivery',
                      style: TextStyle(
                        fontFamily: 'GothamMedium',
                        fontSize: 19.0.sp,
                        color: Color.fromARGB(255, 71, 54, 111),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(0.0, 0.0, 10, 10),
                        child: Text(
                          'You are willing to pay in cash at the time of delivery',
                          style: TextStyle(
                            fontFamily: 'GothamMedium',
                            fontSize: 12.0.sp,
                            color: Color.fromARGB(255, 71, 54, 111),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(0.0, 7.0, 10, 10),
                        child: TextFormField(
                          onChanged: (val) {
                            mobile = val;
                          },
                          cursorColor: Color.fromARGB(255, 71, 54, 111),
                          maxLength: 12,
                          maxLines: 1,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            focusColor: Color.fromARGB(255, 71, 54, 111),
                            hoverColor: Color.fromARGB(255, 71, 54, 111),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6.0)),
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 71, 54, 111)),
                              //borderSide: const BorderSide(),
                            ),
                            hintStyle: TextStyle(
                              fontFamily: 'GothamMedium',
                              fontSize: 13.0.sp,
                              color: Color.fromARGB(255, 71, 54, 111),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color.fromARGB(255, 71, 54, 111),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                            fillColor: Colors.white24,
                            hintText: 'Enter Phone Number',
                            counterText: "",
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(0.0, 10.0, 10.0, 15.0),
                        child: Text(
                          'For placing order as COD, Verification is Mandatory',
                          style: TextStyle(
                            fontFamily: 'GothamMedium',
                            fontSize: 12.0.sp,
                            color: Color.fromARGB(255, 71, 54, 111),
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 71, 54, 111),
                            shape: const BeveledRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            minimumSize: Size((queryData.size.width / 3),
                                (queryData.size.height / 20)),
                          ),
                          onPressed: () {
                            validateMobile(mobile);
                          },
                          child: Text(
                            'Confirm',
                            style: TextStyle(
                              fontFamily: 'GothamMedium',
                              fontSize: 13.0.sp,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
