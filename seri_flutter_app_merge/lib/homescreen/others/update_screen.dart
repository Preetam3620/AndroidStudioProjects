import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:seri_flutter_app/app-bar/app_bar.dart';

import '../../constants.dart';

class Update extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: buildAppBarWithText(context, 'Update Profile'),
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: kDefaultPadding,
                vertical: kDefaultPadding,
              ),
              child: UpdateForm(),
            ),
          ],
        ),
      ),
    );
  }
}

class UpdateForm extends StatefulWidget {
  @override
  _UpdateFormState createState() => _UpdateFormState();
}

class _UpdateFormState extends State<UpdateForm> {
  final _pinPutController = TextEditingController();
  final _pinPutFocusNode = FocusNode();
  int selectedRadio;

  final phoneNumberController = new TextEditingController();

  final BoxDecoration pinPutDecoration = BoxDecoration(
    border: Border.all(
      color: kPrimaryColor.withOpacity(0.5),
    ),
  );

  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
  }

  setSelectedValue(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  // Widget buildCodeNumberBox(String codeNumber) {
  //   return Container(
  //     padding: EdgeInsets.all(kDefaultPadding / 2),
  //     decoration: BoxDecoration(
  //       border: Border.all(
  //         color: kPrimaryColor.withOpacity(0.5),
  //       ),
  //     ),
  //     child: Text(
  //       codeNumber,
  //       style: TextStyle(
  //           fontSize: 22.0, fontWeight: FontWeight.bold, color: kPrimaryColor),
  //     ),
  //   );
  // }

  _showModalBottomSheetForEmail(context, size) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            padding: EdgeInsets.symmetric(
              vertical: kDefaultPadding,
              horizontal: kDefaultPadding,
            ),
            height: 300,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Enter New Email Address",
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    Image.asset(
                      'lib/assets/images/cross_purple.png',
                      height: 20,
                    ),
                  ],
                ),
                Spacer(),
                TextFormField(
                  controller: phoneNumberController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      gapPadding: 10,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      gapPadding: 10,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      gapPadding: 10,
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: kDefaultPadding,
                      vertical: kDefaultPadding,
                    ),
                    hintText: 'New email address',
                    labelText: 'New email address',
                  ),
                ),
                SizedBox(
                  height: kDefaultPadding,
                ),
                TextFormField(
                  controller: phoneNumberController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      gapPadding: 10,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      gapPadding: 10,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      gapPadding: 10,
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: kDefaultPadding,
                      vertical: kDefaultPadding,
                    ),
                    hintText: 'Password',
                    labelText: 'Password',
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(vertical: kDefaultPadding * 0.5),
                  // margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
                  width: size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),

                  child: FlatButton(
                    color: kPrimaryColor,
                    onPressed: () {},
                    child: Text(
                      'Confirm Email',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Spacer(),
              ],
            ),
          );
        });
  }

  _showModalBottomSheetForPass(context, size) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.symmetric(
            vertical: kDefaultPadding,
            horizontal: kDefaultPadding,
          ),
          height: 300,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Enter New Password",
                    style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Image.asset(
                    'lib/assets/images/cross_purple.png',
                    height: 20,
                  ),
                ],
              ),
              Spacer(),
              TextFormField(
                controller: phoneNumberController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    gapPadding: 10,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    gapPadding: 10,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    gapPadding: 10,
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: kDefaultPadding,
                    vertical: kDefaultPadding,
                  ),
                  hintText: 'Enter New Password',
                  labelText: 'Password',
                ),
              ),
              SizedBox(
                height: kDefaultPadding,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: kDefaultPadding * 0.5),
                // margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
                width: size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),

                child: FlatButton(
                  color: kPrimaryColor,
                  onPressed: () {},
                  child: Text(
                    'Submit new password',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
        );
      },
    );
  }

  _showModalBSForVerification(context, text, size) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.symmetric(
            vertical: kDefaultPadding,
            horizontal: kDefaultPadding,
          ),
          height: 300,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Entered new Phone number",
                        style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        text,
                        style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Image.asset(
                    'lib/assets/images/cross_purple.png',
                    height: 20,
                  ),
                ],
              ),
              SizedBox(
                height: kDefaultPadding,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Enter OTP",
                    style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: kDefaultPadding,
              ),
              Column(
                children: [
                  PinPut(
                    eachFieldWidth: 15.0,
                    eachFieldHeight: 20.0,
                    withCursor: true,
                    fieldsCount: 4,
                    focusNode: _pinPutFocusNode,
                    controller: _pinPutController,
                    // onSubmit: (String pin) => _showSnackBar(pin),
                    submittedFieldDecoration: pinPutDecoration,
                    selectedFieldDecoration: pinPutDecoration,
                    followingFieldDecoration: pinPutDecoration,
                    pinAnimationType: PinAnimationType.scale,
                    textStyle:
                        const TextStyle(color: kPrimaryColor, fontSize: 20.0),
                  ),
                  SizedBox(
                    height: kDefaultPadding / 2,
                  ),
                  Text(
                    'Resend OTP',
                    style: TextStyle(color: Colors.red, fontSize: 15.0),
                  )
                ],
              ),
              SizedBox(
                height: kDefaultPadding,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: kDefaultPadding * 0.5),
                // margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
                width: size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),

                child: FlatButton(
                  color: kPrimaryColor,
                  onPressed: () {},
                  child: Text(
                    'Proceed',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
        );
      },
    );
  }

  _showModalBottomSheet(context, size) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.symmetric(
            vertical: kDefaultPadding,
            horizontal: kDefaultPadding,
          ),
          height: 300,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Enter New Phone Number",
                    style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Image.asset(
                    'lib/assets/images/cross_purple.png',
                    height: 20,
                  ),
                ],
              ),
              Spacer(),
              TextFormField(
                controller: phoneNumberController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: kDefaultPadding,
                    vertical: kDefaultPadding,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    gapPadding: 10,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    gapPadding: 10,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    gapPadding: 10,
                  ),
                  hintText: 'Enter New Phone Number',
                  labelText: 'Phone Number',
                ),
              ),
              SizedBox(
                height: kDefaultPadding,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: kDefaultPadding * 0.5),
                // margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
                width: size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),

                child: FlatButton(
                  color: kPrimaryColor,
                  onPressed: () {
                    //  _showModalBSForVerification(
                    //     context,
                    //     phoneNumberController.text,
                    //     size,
                    //   );
                    _showModalBSForVerification(
                        context, phoneNumberController.text, size);
                  },
                  child: Text(
                    'Send OTP for Verification',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Form(
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                horizontal: kDefaultPadding,
                vertical: kDefaultPadding,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                gapPadding: 10,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                gapPadding: 10,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                gapPadding: 10,
              ),
              hintText: 'First Name',
              labelText: 'First Name',
              // suffixIcon: Padding(
              //   padding: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
              //   child: SvgPicture.asset(
              //     'lib/assets/images/edit.svg',
              //     width: 5,
              //     height: 5,
              //   ),
              // ),
            ),
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          TextFormField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                horizontal: kDefaultPadding,
                vertical: kDefaultPadding,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                gapPadding: 10,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                gapPadding: 10,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                gapPadding: 10,
              ),
              hintText: 'Last Name',
              labelText: 'Last Name',
              // suffixIcon: Padding(
              //   padding: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
              //   child: SvgPicture.asset(
              //     'lib/assets/images/edit.svg',
              //     width: 5,
              //     height: 5,
              //   ),
              // ),
            ),
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                horizontal: kDefaultPadding,
                vertical: kDefaultPadding,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                gapPadding: 10,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                gapPadding: 10,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                gapPadding: 10,
              ),
              hintText: 'Email',
              labelText: 'Email Address',
              suffixIcon: Padding(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
                child: GestureDetector(
                  onTap: () {
                    _showModalBottomSheetForEmail(context, size);
                  },
                  child: SvgPicture.asset(
                    'lib/assets/images/edit.svg',
                    width: 5,
                    height: 5,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                horizontal: kDefaultPadding,
                vertical: kDefaultPadding,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                gapPadding: 10,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                gapPadding: 10,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                gapPadding: 10,
              ),
              hintText: 'Password',
              labelText: 'Password',
              suffixIcon: GestureDetector(
                onTap: () {
                  _showModalBottomSheetForPass(context, size);
                },
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
                  child: SvgPicture.asset(
                    'lib/assets/images/edit.svg',
                    width: 5,
                    height: 5,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                horizontal: kDefaultPadding,
                vertical: kDefaultPadding,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                gapPadding: 10,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                gapPadding: 10,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                gapPadding: 10,
              ),
              hintText: 'Date of Birth',
              labelText: 'Date of Birth',
              suffixIcon: Padding(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
                child: Image.asset(
                  'lib/assets/images/downward_arrow.png',
                  width: 5,
                  height: 5,
                ),
              ),
            ),
          ),
          SizedBox(height: kDefaultPadding),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Gender',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Radio(
                        value: 1,
                        activeColor: kPrimaryColor,
                        groupValue: selectedRadio,
                        onChanged: (val) {
                          setSelectedValue(val);
                        },
                      ),
                      Text(
                        'Male',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        value: 2,
                        groupValue: selectedRadio,
                        activeColor: kPrimaryColor,
                        onChanged: (val) {
                          setSelectedValue(val);
                        },
                      ),
                      Text(
                        'Female',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
              // SizedBox(
              //   height: kDefaultPadding,
              // ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: kDefaultPadding,
                    vertical: kDefaultPadding,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    gapPadding: 10,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    gapPadding: 10,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    gapPadding: 10,
                  ),
                  hintText: 'Phone Number',
                  labelText: 'Phone Number',
                  suffixIcon: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
                    child: GestureDetector(
                      onTap: () {
                        _showModalBottomSheet(context, size);
                      },
                      child: SvgPicture.asset(
                        'lib/assets/images/edit.svg',
                        width: 5,
                        height: 5,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: kDefaultPadding * 0.5),
            margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
            width: size.width / 2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: kPrimaryColor,
            ),
            child: Center(
              child: Text(
                'Update',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
