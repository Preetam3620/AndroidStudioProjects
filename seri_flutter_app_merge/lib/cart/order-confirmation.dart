import 'package:flutter/material.dart';
import 'package:seri_flutter_app/app-bar/app_bar.dart';
import '../address/screens/address-book.dart';
import '../address/screens/address-book-page.dart';

class OrderConfirmation extends StatefulWidget {
  final name;
  final phoneNo;
  final pinCode;
  final city;
  final flatNo;
  final area;
  final landmark;
  final type;

  OrderConfirmation(
      {this.name,
      this.phoneNo,
      this.pinCode,
      this.city,
      this.area,
      this.landmark,
      this.type,
      this.flatNo});

  @override
  _OrderConfirmationState createState() => _OrderConfirmationState();
}

class _OrderConfirmationState extends State<OrderConfirmation> {
  var address = [];
  String PaymentMode = "Cash On Delivery";

  @override
  Widget build(BuildContext context) {
    return
        // wishList.isEmpty
        //   ? Center(
        //   child: Text(
        //     "Your Wish List is empty",
        //     style: TextStyle(fontSize: 20),
        //   ))
        //   :
        Scaffold(
            appBar: buildAppBarWithText(context, 'Order Confirmation'),
            resizeToAvoidBottomInset: true,
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child:
                  Padding(
                padding: const EdgeInsets.only(
                    left: 11.0, right: 11, top: 18, bottom: 18),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Card(
                          child: Container(
                        width: MediaQuery.of(context).size.width - 15,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color: Color.fromARGB(255, 71, 54, 111)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Home Delivery",
                                    style: TextStyle(
                                        fontFamily: 'GothamMedium',
                                        color: Color.fromARGB(255, 71, 54, 111),
                                        fontSize:
                                            MediaQuery.of(context).size.width /
                                                23),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  AddressBookPage()));
                                    },
                                    child: Text("Change Address",
                                        //   textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontFamily: 'GothamMedium',
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                25)),
                                  )
                                ],
                              ),
                              SizedBox(height: 12),
                              Text("Ohm Chadwik",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 71, 54, 111),
                                      fontFamily: 'GothamMedium',
                                      fontSize:
                                          MediaQuery.of(context).size.width /
                                              18)),
                              SizedBox(height: 12),
                              Row(
                                children: [
                                  Text(
                                    "Plot no. ",
                                    //  textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 71, 54, 111),
                                        fontFamily: 'GothamMedium',
                                        fontSize:
                                            MediaQuery.of(context).size.width /
                                                23),
                                  ),
                                  Text("480/203, ",
                                      //   textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 71, 54, 111),
                                          fontFamily: 'GothamMedium',
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              23)),
                                  Text("sai section,",
                                      style: TextStyle(
                                          fontFamily: 'GothamMedium',
                                          color:
                                              Color.fromARGB(255, 71, 54, 111),
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              23)),
                                ],
                              ),
                              if (widget.landmark != null)
                                Text("near data mandir,",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: 'GothamMedium',
                                        color: Color.fromARGB(255, 71, 54, 111),
                                        fontSize:
                                            MediaQuery.of(context).size.width /
                                                23)),
                              Row(
                                children: [
                                  Text("City - ",
                                      style: TextStyle(
                                          fontFamily: 'GothamMedium',
                                          color:
                                          Color.fromARGB(255, 71, 54, 111),
                                          fontSize: MediaQuery.of(context)
                                              .size
                                              .width /
                                              23)),
                                  Text("Thane, ",
                                      style: TextStyle(
                                          fontFamily: 'GothamMedium',
                                          color:
                                          Color.fromARGB(255, 71, 54, 111),
                                          fontSize: MediaQuery.of(context)
                                              .size
                                              .width /
                                              23)),
                                  Text("Dist - ",
                                      style: TextStyle(
                                          fontFamily: 'GothamMedium',
                                          color:
                                              Color.fromARGB(255, 71, 54, 111),
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              23)),
                                  Text("Thane, ",
                                      style: TextStyle(
                                          fontFamily: 'GothamMedium',
                                          color:
                                              Color.fromARGB(255, 71, 54, 111),
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              23)),
                                ],
                              ),
                              Row(
                                children: [
                                  Text("PinCode - ",
                                      style: TextStyle(
                                          fontFamily: 'GothamMedium',
                                          color:
                                          Color.fromARGB(255, 71, 54, 111),
                                          fontSize: MediaQuery.of(context)
                                              .size
                                              .width /
                                              23)),
                                  Text("416112",
                                      style: TextStyle(
                                          color:
                                          Color.fromARGB(255, 71, 54, 111),
                                          fontFamily: 'GothamMedium',
                                          fontSize: MediaQuery.of(context)
                                              .size
                                              .width /
                                              23)),
                                ],
                              ),
                              SizedBox(height: 12),
                              Row(children: [
                                Text("Phone Number - ",
                                    style: TextStyle(
                                        fontFamily: 'GothamMedium',
                                        color: Color.fromARGB(255, 71, 54, 111),
                                        fontSize:
                                            MediaQuery.of(context).size.width /
                                                23)),
                                Text("6215199399",
                                    style: TextStyle(
                                        fontFamily: 'GothamMedium',
                                        color: Color.fromARGB(255, 71, 54, 111),
                                        fontSize:
                                            MediaQuery.of(context).size.width /
                                                23)),
                              ])
                            ],
                          ),
                        ),
                      )),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Expected Delivery Date:",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'GothamMedium',
                                  fontWeight: FontWeight.w600,
                                  color: Colors.red,
                                  fontSize:
                                      MediaQuery.of(context).size.width / 22)),
                          Text("01 May 2021",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'GothamMedium',
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromARGB(255, 71, 54, 111),
                                  fontSize:
                                      MediaQuery.of(context).size.width / 22)),
                        ],
                      ),
                      SizedBox(height: 5),
                      Divider(
                        color: Color.fromARGB(255, 71, 54, 111),
                        height: 10,
                        thickness: 1,
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Total Order Amount ",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'GothamMedium',
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromARGB(255, 71, 54, 111),
                                  fontSize:
                                      MediaQuery.of(context).size.width / 22)),
                          Row(
                            children: [
                              Text(" Rs ",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'GothamMedium',
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromARGB(255, 71, 54, 111),
                                      fontSize:
                                          MediaQuery.of(context).size.width /
                                              22)),
                              Text("3949",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'GothamMedium',
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromARGB(255, 71, 54, 111),
                                      fontSize:
                                          MediaQuery.of(context).size.width /
                                              22)),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Divider(
                        color: Color.fromARGB(255, 71, 54, 111),
                        height: 10,
                        thickness: 1,
                      ),
                      SizedBox(height: 5),
                      Text("Payment Methods",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'GothamMedium',
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 71, 54, 111),
                              fontSize:
                                  MediaQuery.of(context).size.width / 22)),
                      SizedBox(height: 5),
                      Text(
                          "click on the payment method as per your convenience",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'GothamMedium',
                              color: Color.fromARGB(255, 71, 54, 111),
                              fontSize:
                                  MediaQuery.of(context).size.width / 30)),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                PaymentMode = 'Online Payment';
                              });
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(right: 20, bottom: 10),
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 10),
                                decoration: BoxDecoration(
                                  color: PaymentMode == 'Online Payment'
                                      ? Color.fromARGB(255, 71, 54, 111)
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(2),
                                  border: Border.all(
                                      color: Color.fromARGB(255, 71, 54, 111)),
                                ),
                                child: Text(" Online Payment ",
                                    style: TextStyle(
                                        fontFamily: 'GothamMedium',
                                        color: PaymentMode == 'Online Payment'
                                            ? Colors.white
                                            : Color.fromARGB(255, 71, 54, 111),
                                        fontSize:
                                            MediaQuery.of(context).size.width /
                                                25,
                                        fontWeight: FontWeight.normal)),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                PaymentMode = 'Cash on Delivery';
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, bottom: 10),
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 10),
                                decoration: BoxDecoration(
                                  color: PaymentMode == 'Cash on Delivery'
                                      ? Color.fromARGB(255, 71, 54, 111)
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(2),
                                  border: Border.all(
                                      color: Color.fromARGB(255, 71, 54, 111)),
                                ),
                                child: Text(" Cash on Delivery ",
                                    style: TextStyle(
                                        fontFamily: 'GothamMedium',
                                        color: PaymentMode == 'Cash on Delivery'
                                            ? Colors.white
                                            : Color.fromARGB(255, 71, 54, 111),
                                        fontSize:
                                            MediaQuery.of(context).size.width /
                                                25,
                                        fontWeight: FontWeight.normal)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ]),
              ),
            ));
  }
}
