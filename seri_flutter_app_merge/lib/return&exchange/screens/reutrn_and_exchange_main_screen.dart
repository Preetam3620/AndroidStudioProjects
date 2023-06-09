import 'package:flutter/material.dart';
import 'package:group_radio_button/group_radio_button.dart';
import 'package:seri_flutter_app/app-bar/app_bar.dart';
import 'package:sizer/sizer.dart';

class ReturnAndExchange extends StatefulWidget {
  @override
  _ReturnAndExchangeState createState() => _ReturnAndExchangeState();
}

class _ReturnAndExchangeState extends State<ReturnAndExchange> {
  MediaQueryData queryData;
  String orderId = 'Hello123';
  bool showExchangeAndReturnButtons = true;
  bool showReturnInfo = false;
  bool showExchangeInfo = false;
  bool showReturnAddressScreen = false;
  bool showExchangeAddressScreen = false;
  bool isChecked = false;
  var choices = [
    'Poor product quality',
    'Product received is damaged',
    'Product & shipping box both are damaged',
    'Product received is different',
    'Others'
  ];
  String finalChoice = "Pending";

  @override
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 249, 249, 249),
        appBar: buildAppBarWithText(context, 'Return/Exchange'),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.fromLTRB(20, 20, 10, 15),
                  child: Text(
                    'Order ID: $orderId',
                    style: TextStyle(
                      fontSize: 11.0.sp,
                      fontFamily: 'GothamMedium',
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 71, 54, 111),
                    ),
                  ),
                ),
                Container(
                  width: queryData.size.width,
                  height: queryData.size.height / 5.2,
                  margin: EdgeInsets.fromLTRB(queryData.size.width / 25, 5,
                      queryData.size.width / 25, 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.all(
                      color: Color.fromARGB(255, 71, 54, 111),
                    ),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          child: Image.asset(
                            'lib/assets/images/firstpage.png',
                            height: queryData.size.width / 3.3,
                            width: queryData.size.width / 4.3,
                          ),
                        ),
                        SizedBox(
                          width: queryData.size.width / 35,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                'CRAFT CLUB Love Printed diary in euro binding A5 Diaries (Multicolor).',
                                style: TextStyle(
                                  fontSize: 11.0.sp,
                                  fontFamily: 'GothamMedium',
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 71, 54, 111),
                                ),
                              ),
                              width: queryData.size.width / 1.8,
                            ),
                            Container(
                              child: Text(
                                'Rs 999',
                                style: TextStyle(
                                  fontSize: 11.0.sp,
                                  fontFamily: 'GothamMedium',
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 71, 54, 111),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                showExchangeAndReturnButtons
                    ? _buildExchangeAndReturnButtons(queryData)
                    : Container(),
                showExchangeInfo ? _buildExchangeInfo(queryData) : Container(),
                showReturnInfo ? _buildReturnInfo(queryData) : Container(),
                showReturnAddressScreen
                    ? _buildFinalReturnAddressScreen(queryData)
                    : Container(),
                showExchangeAddressScreen
                    ? _buildFinalExchangeAddressScreen(queryData)
                    : Container(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFinalExchangeAddressScreen(MediaQueryData mediaQueryData) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Color.fromARGB(255, 71, 54, 111);
      }
      return Color.fromARGB(255, 71, 54, 111);
    }

    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(
                queryData.size.width / 16, 0, queryData.size.width / 5, 15),
            alignment: Alignment.topLeft,
            child: Text(
              'Why are you Exchanging this Product?',
              style: TextStyle(
                fontSize: 11.5.sp,
                fontFamily: 'GothamMedium',
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 71, 54, 111),
              ),
            ),
          ),
          Container(
            width: queryData.size.width / 1.1,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(0)),
                border: Border.all(
                  color: Color.fromARGB(255, 71, 54, 111),
                ),
              ),
              child: RadioButton<String>(
                description: finalChoice,
                value: finalChoice,
                groupValue: finalChoice,
                onChanged: (value) {
                  setState(() {
                    finalChoice = value;
                  });
                },
                activeColor: Color.fromARGB(255, 71, 54, 111),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(
                queryData.size.width / 16, 12, queryData.size.width / 5, 10),
            alignment: Alignment.topLeft,
            child: Text(
              'Pick up address',
              style: TextStyle(
                fontFamily: 'GothamMedium',
                fontSize: 11.5.sp,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 71, 54, 111),
              ),
            ),
          ),
          Container(
            width: queryData.size.width,
            margin: EdgeInsets.fromLTRB(
                queryData.size.width / 25, 5, queryData.size.width / 25, 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              border: Border.all(
                color: Color.fromARGB(255, 71, 54, 111),
              ),
            ),
            child: Container(
              margin: EdgeInsets.fromLTRB(
                  mediaQueryData.size.width / 25, 15, 10, 10),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Ohm Chandik',
                      style: TextStyle(
                        fontFamily: 'GothamMedium',
                        fontSize: 13.5.sp,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 71, 54, 111),
                      ),
                    ),
                  ),
                  SizedBox(height: mediaQueryData.size.width / 30),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Plot no. 408/203, sai section, near datta mandir, Dist - Thane, Pincode - 421501',
                      style: TextStyle(
                        fontSize: 11.0.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'GothamMedium',
                        color: Color.fromARGB(255, 71, 54, 111),
                      ),
                    ),
                  ),
                  SizedBox(height: mediaQueryData.size.width / 30),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Phone number: 7563468900',
                      style: TextStyle(
                        fontSize: 11.0.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'GothamMedium',
                        color: Color.fromARGB(255, 71, 54, 111),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: mediaQueryData.size.width / 1.2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Checkbox(
                    checkColor: Colors.white,
                    fillColor: MaterialStateProperty.resolveWith(getColor),
                    value: isChecked,
                    onChanged: (bool value) {
                      setState(() {
                        isChecked = value;
                      });
                    },
                  ),
                ),
                Flexible(
                  child: Container(
                    child: Text(
                      'I agree with the Privacy Policy & Terms and Conditions',
                      style: TextStyle(
                        fontSize: 13.5.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'GothamMedium',
                        color: Color.fromARGB(255, 71, 54, 111),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
            width: queryData.size.width / 1.6,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 71, 54, 111),
                shape: const BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                minimumSize: Size(
                    (queryData.size.width / 2), (queryData.size.height / 25)),
              ),
              onPressed: () {
                setState(() {
                  showReturnInfo = false;
                  showReturnAddressScreen = true;
                });
              },
              child: Text(
                'Continue Exchange',
                style: TextStyle(
                  fontFamily: 'GothamMedium',
                  fontSize: 11.5.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFinalReturnAddressScreen(MediaQueryData mediaQueryData) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Color.fromARGB(255, 71, 54, 111);
      }
      return Color.fromARGB(255, 71, 54, 111);
    }

    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(
                queryData.size.width / 16, 0, queryData.size.width / 5, 15),
            alignment: Alignment.topLeft,
            child: Text(
              'Why are you Returning this Product?',
              style: TextStyle(
                fontSize: 11.5.sp,
                fontFamily: 'GothamMedium',
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 71, 54, 111),
              ),
            ),
          ),
          Container(
            width: queryData.size.width / 1.1,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(0)),
                border: Border.all(
                  color: Color.fromARGB(255, 71, 54, 111),
                ),
              ),
              child: RadioButton<String>(
                description: finalChoice,
                value: finalChoice,
                groupValue: finalChoice,
                onChanged: (value) {
                  setState(() {
                    finalChoice = value;
                  });
                },
                activeColor: Color.fromARGB(255, 71, 54, 111),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(
                queryData.size.width / 16, 12, queryData.size.width / 5, 10),
            alignment: Alignment.topLeft,
            child: Text(
              'Pick up address',
              style: TextStyle(
                fontSize: 11.5.sp,
                fontWeight: FontWeight.w600,
                fontFamily: 'GothamMedium',
                color: Color.fromARGB(255, 71, 54, 111),
              ),
            ),
          ),
          Container(
            width: queryData.size.width,
            margin: EdgeInsets.fromLTRB(
                queryData.size.width / 25, 5, queryData.size.width / 25, 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              border: Border.all(
                color: Color.fromARGB(255, 71, 54, 111),
              ),
            ),
            child: Container(
              margin: EdgeInsets.fromLTRB(
                  mediaQueryData.size.width / 25, 15, 10, 10),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Ohm Chandik',
                      style: TextStyle(
                        fontSize: 13.5.sp,
                        fontFamily: 'GothamMedium',
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 71, 54, 111),
                      ),
                    ),
                  ),
                  SizedBox(height: mediaQueryData.size.width / 30),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Plot no. 408/203, sai section, near datta mandir, Dist - Thane, Pincode - 421501',
                      style: TextStyle(
                        fontSize: 11.0.sp,
                        fontFamily: 'GothamMedium',
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 71, 54, 111),
                      ),
                    ),
                  ),
                  SizedBox(height: mediaQueryData.size.width / 30),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Phone number: 7563468900',
                      style: TextStyle(
                        fontSize: 11.0.sp,
                        fontFamily: 'GothamMedium',
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 71, 54, 111),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: mediaQueryData.size.width / 1.2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Checkbox(
                    checkColor: Colors.white,
                    fillColor: MaterialStateProperty.resolveWith(getColor),
                    value: isChecked,
                    onChanged: (bool value) {
                      setState(() {
                        isChecked = value;
                      });
                    },
                  ),
                ),
                Flexible(
                  child: Container(
                    child: Text(
                      'I agree with the Privacy Policy & Terms and Conditions',
                      style: TextStyle(
                        fontSize: 13.5.sp,
                        fontFamily: 'GothamMedium',
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 71, 54, 111),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
            width: queryData.size.width / 1.6,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 71, 54, 111),
                shape: const BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                minimumSize: Size(
                    (queryData.size.width / 2), (queryData.size.height / 25)),
              ),
              onPressed: () {
                setState(() {
                  showReturnInfo = false;
                  showReturnAddressScreen = true;
                });
              },
              child: Text(
                'Continue Exchange',
                style: TextStyle(
                  fontSize: 11.5.sp,
                  fontFamily: 'GothamMedium',
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildReturnInfo(MediaQueryData queryData) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(
                queryData.size.width / 16, 0, queryData.size.width / 5, 15),
            alignment: Alignment.topLeft,
            child: Text(
              'Why are you Returning this Product?',
              style: TextStyle(
                fontSize: 11.5.sp,
                fontFamily: 'GothamMedium',
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 71, 54, 111),
              ),
            ),
          ),
          Container(
            width: queryData.size.width / 1.1,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(0)),
                    border: Border.all(
                      color: Color.fromARGB(255, 71, 54, 111),
                    ),
                  ),
                  child: RadioButton<String>(
                    description: 'Poor product quality',
                    value: 'Poor product quality',
                    groupValue: finalChoice,
                    onChanged: (value) {
                      setState(() {
                        finalChoice = value;
                      });
                    },
                    activeColor: Color.fromARGB(255, 71, 54, 111),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(0)),
                    border: Border.all(
                      color: Color.fromARGB(255, 71, 54, 111),
                    ),
                  ),
                  child: RadioButton<String>(
                    description: 'Product received is damaged',
                    value: 'Product received is damaged',
                    groupValue: finalChoice,
                    onChanged: (value) {
                      setState(() {
                        finalChoice = value;
                      });
                    },
                    activeColor: Color.fromARGB(255, 71, 54, 111),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(0)),
                    border: Border.all(
                      color: Color.fromARGB(255, 71, 54, 111),
                    ),
                  ),
                  child: Flexible(
                    child: RadioButton<String>(
                      description: 'Product & shipping box both are damaged',
                      value: 'Product & shipping box both are damaged',
                      groupValue: finalChoice,
                      onChanged: (value) {
                        setState(() {
                          finalChoice = value;
                        });
                      },
                      activeColor: Color.fromARGB(255, 71, 54, 111),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(0)),
                    border: Border.all(
                      color: Color.fromARGB(255, 71, 54, 111),
                    ),
                  ),
                  child: RadioButton<String>(
                    description: 'Product received is different',
                    value: 'Product received is different',
                    groupValue: finalChoice,
                    onChanged: (value) {
                      setState(() {
                        finalChoice = value;
                      });
                    },
                    activeColor: Color.fromARGB(255, 71, 54, 111),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(0)),
                    border: Border.all(
                      color: Color.fromARGB(255, 71, 54, 111),
                    ),
                  ),
                  child: RadioButton<String>(
                    description: 'Others',
                    value: "Others",
                    groupValue: finalChoice,
                    onChanged: (value) {
                      setState(() {
                        finalChoice = value;
                      });
                    },
                    activeColor: Color.fromARGB(255, 71, 54, 111),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(
                queryData.size.width / 16, 10, queryData.size.width / 5, 10),
            alignment: Alignment.topLeft,
            child: Text(
              'Comments',
              style: TextStyle(
                fontSize: 11.5.sp,
                fontFamily: 'GothamMedium',
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 71, 54, 111),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(5, 0, 5, 5),
            width: queryData.size.width / 1.07,
            height: queryData.size.height / 8,
            child: TextFormField(
              decoration: InputDecoration(
                focusColor: Color.fromARGB(255, 71, 54, 111),
                hoverColor: Color.fromARGB(255, 71, 54, 111),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(0),
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 71, 54, 111)),
                  //borderSide: const BorderSide(),
                ),
                hintStyle: TextStyle(
                  fontSize: 12.0.sp,
                  color: Color.fromARGB(255, 71, 54, 111),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color.fromARGB(255, 71, 54, 111),
                    width: 1,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color.fromARGB(255, 71, 54, 111),
                    width: 1,
                  ),
                ),
                fillColor: Colors.white24,
                hintText: '',
                counterText: "",
              ),
              maxLines: 4,
              minLines: 4,
              maxLength: 100,
              cursorColor: Color.fromARGB(255, 71, 54, 111),
            ),
          ),
          Container(
            width: queryData.size.width / 1.6,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 71, 54, 111),
                shape: const BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                minimumSize: Size(
                    (queryData.size.width / 2), (queryData.size.height / 25)),
              ),
              onPressed: () {
                setState(() {
                  showReturnInfo = false;
                  showReturnAddressScreen = true;
                });
              },
              child: Text(
                'Continue',
                style: TextStyle(
                  fontSize: 11.5.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildExchangeInfo(MediaQueryData queryData) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(
                queryData.size.width / 16, 0, queryData.size.width / 5, 15),
            alignment: Alignment.topLeft,
            child: Text(
              'Why are you Exchanging this Product?',
              style: TextStyle(
                fontSize: 11.5.sp,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 71, 54, 111),
              ),
            ),
          ),
          Container(
            width: queryData.size.width / 1.1,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(0)),
                    border: Border.all(
                      color: Color.fromARGB(255, 71, 54, 111),
                    ),
                  ),
                  child: RadioButton<String>(
                    description: 'Poor product quality',
                    value: 'Poor product quality',
                    groupValue: finalChoice,
                    onChanged: (value) {
                      setState(() {
                        finalChoice = value;
                      });
                    },
                    activeColor: Color.fromARGB(255, 71, 54, 111),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(0)),
                    border: Border.all(
                      color: Color.fromARGB(255, 71, 54, 111),
                    ),
                  ),
                  child: RadioButton<String>(
                    description: 'Product received is damaged',
                    value: 'Product received is damaged',
                    groupValue: finalChoice,
                    onChanged: (value) {
                      setState(() {
                        finalChoice = value;
                      });
                    },
                    activeColor: Color.fromARGB(255, 71, 54, 111),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(0)),
                    border: Border.all(
                      color: Color.fromARGB(255, 71, 54, 111),
                    ),
                  ),
                  child: RadioButton<String>(
                    description: 'Product & shipping box both are damaged',
                    value: 'Product & shipping box both are damaged',
                    groupValue: finalChoice,
                    onChanged: (value) {
                      setState(() {
                        finalChoice = value;
                      });
                    },
                    activeColor: Color.fromARGB(255, 71, 54, 111),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(0)),
                    border: Border.all(
                      color: Color.fromARGB(255, 71, 54, 111),
                    ),
                  ),
                  child: RadioButton<String>(
                    description: 'Product received is different',
                    value: 'Product received is different',
                    groupValue: finalChoice,
                    onChanged: (value) {
                      setState(() {
                        finalChoice = value;
                      });
                    },
                    activeColor: Color.fromARGB(255, 71, 54, 111),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(0)),
                    border: Border.all(
                      color: Color.fromARGB(255, 71, 54, 111),
                    ),
                  ),
                  child: RadioButton<String>(
                    description: "Others",
                    value: "Others",
                    groupValue: finalChoice,
                    onChanged: (value) {
                      setState(() {
                        finalChoice = value;
                      });
                    },
                    activeColor: Color.fromARGB(255, 71, 54, 111),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(
                queryData.size.width / 16, 10, queryData.size.width / 5, 10),
            alignment: Alignment.topLeft,
            child: Text(
              'Comments',
              style: TextStyle(
                fontSize: 11.5.sp,
                fontFamily: 'GothamMedium',
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 71, 54, 111),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(5, 0, 5, 5),
            width: queryData.size.width / 1.07,
            height: queryData.size.height / 8,
            child: TextFormField(
              decoration: InputDecoration(
                focusColor: Color.fromARGB(255, 71, 54, 111),
                hoverColor: Color.fromARGB(255, 71, 54, 111),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(0),
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 71, 54, 111)),
                  //borderSide: const BorderSide(),
                ),
                hintStyle: TextStyle(
                  fontSize: 12.0.sp,
                  color: Color.fromARGB(255, 71, 54, 111),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color.fromARGB(255, 71, 54, 111),
                    width: 1,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color.fromARGB(255, 71, 54, 111),
                    width: 1,
                  ),
                ),
                fillColor: Colors.white24,
                hintText: '',
                counterText: "",
              ),
              maxLines: 4,
              minLines: 4,
              maxLength: 100,
              cursorColor: Color.fromARGB(255, 71, 54, 111),
            ),
          ),
          Container(
            width: queryData.size.width / 1.6,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 71, 54, 111),
                shape: const BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                minimumSize: Size(
                    (queryData.size.width / 2), (queryData.size.height / 25)),
              ),
              onPressed: () {
                setState(() {
                  showExchangeInfo = false;
                  showExchangeAddressScreen = true;
                });
              },
              child: Text(
                'Continue',
                style: TextStyle(
                  fontSize: 11.5.sp,
                  fontFamily: 'GothamMedium',
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildExchangeAndReturnButtons(MediaQueryData queryData) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            border: Border.all(
              color: Color.fromARGB(255, 71, 54, 111),
            )),
        width: (queryData.size.width / 1.1),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(15, 10, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          showExchangeAndReturnButtons = false;
                          showExchangeInfo = true;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(
                          width: 0.5,
                          color: Color.fromARGB(255, 71, 54, 111),
                        ),
                        primary: Color.fromARGB(255, 255, 255, 255),
                        shape: const BeveledRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        minimumSize: Size((queryData.size.width / 3),
                            (queryData.size.height / 25)),
                      ),
                      child: Text(
                        'Exchange',
                        style: TextStyle(
                          fontSize: 11.0.sp,
                          fontFamily: 'GothamMedium',
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 71, 54, 111),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          showExchangeAndReturnButtons = false;
                          showReturnInfo = true;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(
                          width: 0.5,
                          color: Color.fromARGB(255, 71, 54, 111),
                        ),
                        primary: Color.fromARGB(255, 71, 54, 111),
                        shape: const BeveledRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        minimumSize: Size((queryData.size.width / 3),
                            (queryData.size.height / 25)),
                      ),
                      child: Text(
                        'Return',
                        style: TextStyle(
                          fontSize: 11.0.sp,
                          fontFamily: 'GothamMedium',
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 5, 0, 10),
                child: Text(
                  'Exchange is possible with the same product itself',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'GothamMedium',
                    color: Color.fromARGB(255, 71, 54, 111),
                    fontSize: 9.0.sp,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Reasons {
  int count;
  String choice;

  Reasons(this.count, this.choice);
}
