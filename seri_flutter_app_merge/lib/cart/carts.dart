import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seri_flutter_app/app-bar/app_bar.dart';
import 'package:seri_flutter_app/cart/cart_product.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  bool apply = false;
  bool checkValue = false;
  bool delivery = true;
  double totalAmt = 500.00;
  double cardTotal;
  double cardSavings;
  double gift;
  double couponSavings;
  bool containsGift = true;

  final formKey = GlobalKey<FormState>();
  TextEditingController couponTextEditingController =
      new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBarWithText(context, 'Cart'),
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 11.0, right: 11, top: 18, bottom: 18),
          child: Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      " 3 Items in cart",
                      style: TextStyle(
                          fontFamily: 'GothamMedium',
                          fontSize: MediaQuery.of(context).size.width / 25,
                          color: Color.fromARGB(255, 71, 54, 111)),
                    ),
                    // SizedBox(
                    //   width: MediaQuery.of(context).size.width/80,
                    // ),
                    Row(
                      children: [
                        Text(
                          "Total amount Rs ",
                          style: TextStyle(
                              fontFamily: 'GothamMedium',
                              fontSize: MediaQuery.of(context).size.width / 25,
                              color: Color.fromARGB(255, 71, 54, 111)),
                        ),
                        Text(
                          "900",
                          style: TextStyle(
                              fontFamily: 'GothamMedium',
                              fontSize: MediaQuery.of(context).size.width / 25,
                              color: Color.fromARGB(255, 71, 54, 111)),
                        ),
                      ],
                    )
                  ],
                ),
                Flexible(child: CartList()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        GestureDetector(onTap: () {}, child: Icon(Icons.add)),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 7.0,
                          ),
                          child: GestureDetector(
                            onTap: () {},
                            child: Text(
                              "add more products",
                              style: TextStyle(
                                  fontFamily: 'GothamMedium',
                                  fontSize: 12,
                                  color: Color.fromARGB(255, 71, 54, 111)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    // SizedBox(width: MediaQuery.of(context).size.width ,),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 7.0,
                      ),
                      child: GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Remove all",
                          style: TextStyle(
                              fontFamily: 'GothamMedium',
                              fontSize: 12,
                              color: Colors.red),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 2,
                ),
               if(containsGift == true)
                Container(
                 // height: 250,
                  width: MediaQuery.of(context).size.width - 15,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border:
                          Border.all(color: Color.fromARGB(255, 71, 54, 111)),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("This Order Contains Gift",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'GothamMedium',
                                  color: Colors.green,
                                  fontSize: MediaQuery.of(context).size.width/22)),
                          SizedBox(height:3),
                          Text("Add Gift Message",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontFamily: 'GothamMedium',
                                  color: Color.fromARGB(255, 71, 54, 111),
                                  fontSize: MediaQuery.of(context).size.width/24)),
                          Container(
                            height: 120,
                            width: MediaQuery.of(context).size.width * 2,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  color: Color.fromARGB(255, 71, 54, 111)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextFormField(
                                    textAlign: TextAlign.start,
                                    maxLines: 3,
                                    //   controller: couponTextEditingController,
                                    style: TextStyle(
                                        fontFamily: 'GothamMedium',
                                        color: Colors.black,
                                        fontSize: MediaQuery.of(context).size.width/22),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Type Your Gift Message',
                                      hintStyle: TextStyle(
                                          fontFamily: 'GothamMedium',
                                          color: Colors.deepPurpleAccent),
                                      labelStyle: TextStyle(fontSize: MediaQuery.of(context).size.width/24),
                                    )),
                                Divider(
                                  color: Color.fromARGB(255, 71, 54, 111),
                                  height: 1,
                                  thickness: 1,
                                ),
                                Container(
                                 // height: 12,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text("From:",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontFamily: 'GothamMedium',
                                              color: Colors.deepPurpleAccent,
                                              fontSize: MediaQuery.of(context).size.width/24)),
                                      SizedBox(
                                        width: 2,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 6.0),
                                        child: Container(
                                          height: 20,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width -
                                              97,
                                          child: TextFormField(
                                            maxLines: 1,
                                            textAlign: TextAlign.start,
                                            //   controller: couponTextEditingController,
                                            style: TextStyle(
                                                fontFamily: 'GothamMedium',
                                                color: Colors.black,
                                                fontSize: MediaQuery.of(context).size.width/22),
                                            decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: '',
                                              hintStyle: TextStyle(
                                                  fontFamily: 'GothamMedium',
                                                  color:
                                                      Colors.deepPurpleAccent),
                                              labelStyle:
                                                  TextStyle(fontSize: MediaQuery.of(context).size.width/22),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height:8),
                          Text("Add-ons",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'GothamMedium',
                                  color: Color.fromARGB(255, 71, 54, 111),
                                  fontSize: MediaQuery.of(context).size.width/30)),
                          SizedBox(height:8),
                          Row(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 4.0),
                                child: SizedBox(
                                  height: 6,
                                  width: 6,
                                  child: Transform.scale(
                                    scale: 1,
                                    child: Checkbox(
                                      activeColor:
                                          Color.fromARGB(255, 71, 54, 111),
                                      value: checkValue,
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
                                width: 8,
                              ),
                              RichText(
                                text: TextSpan(
                                    text: "Add Gift Bag/Box",
                                    style: TextStyle(
                                      fontFamily: 'GothamMedium',
                                      fontSize:
                                          MediaQuery.of(context).size.width /
                                              29,
                                      color: Color.fromARGB(255, 71, 54, 111),
                                    ),
                                    children: [
                                      TextSpan(
                                        text: "(Additional charges - RS 50)",
                                        style: TextStyle(
                                            fontFamily: 'GothamMedium',
                                            fontSize: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                29,
                                            color: Colors.red),
                                      )
                                    ]),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Icon(Icons.wallet_giftcard,
                                    color: Colors.redAccent, size: 22),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Container(
                                  alignment: Alignment.bottomRight,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.grey[100]),
                                  ),
                                  child: ElevatedButton(
                                    child: Text("See Details",
                                        style: TextStyle(
                                            fontFamily: 'GothamMedium',
                                            color: Colors.red,
                                            fontSize: MediaQuery.of(context).size.width/25)),
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.white,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        ]),
                  ),
                ),

                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 35,
                      width: MediaQuery.of(context).size.width / 1.78,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border:
                            Border.all(color: Color.fromARGB(255, 71, 54, 111)),
                      ),
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        controller: couponTextEditingController,
                        style: TextStyle(
                            fontFamily: 'GothamMedium',
                            color: Colors.red,
                            fontSize: 16),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Type Coupon Code',
                          hintStyle: TextStyle(
                              fontFamily: 'GothamMedium', color: Colors.grey),
                          labelStyle: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    if (apply == false)
                      Container(
                        height: 35,
                        width: MediaQuery.of(context).size.width / 3.2,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 71, 54, 111),
                          border: Border.all(
                              color: Color.fromARGB(255, 71, 54, 111)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                couponTextEditingController.text = "xyz";
                                apply = true;
                              });
                            },
                            child: Text("Apply",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'GothamMedium',
                                    color: Colors.black,
                                    fontSize: 16)),
                          ),
                        ),
                      ),
                    if (apply == true)
                      Container(
                        height: 35,
                        width: MediaQuery.of(context).size.width / 3.2,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                              color: Color.fromARGB(255, 71, 54, 111)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                couponTextEditingController.text = "xyz";
                              });
                            },
                            child: Text("Remove",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'GothamMedium',
                                    color: Colors.black,
                                    fontSize: 16)),
                          ),
                        ),
                      ),
                  ],
                ),
                SizedBox(height: 2),
                Divider(
                  color: Color.fromARGB(255, 71, 54, 111),
                  height: 10,
                  thickness: 1,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Order Details",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'GothamMedium',
                          color: Color.fromARGB(255, 71, 54, 111),
                          fontSize: MediaQuery.of(context).size.width/22,
                          fontWeight: FontWeight.bold)),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Card Total",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'GothamMedium',
                                color: Color.fromARGB(255, 71, 54, 111),
                                fontSize: MediaQuery.of(context).size.width/24,)),
                        Row(
                          children: [
                            Text("Rs ",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'GothamMedium',
                                    color: Color.fromARGB(255, 71, 54, 111),
                                    fontSize: MediaQuery.of(context).size.width/24)),
                            Text("5297",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'GothamMedium',
                                    color: Color.fromARGB(255, 71, 54, 111),
                                    fontSize: MediaQuery.of(context).size.width/24)),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Card Savings ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'GothamMedium',
                                color: Color.fromARGB(255, 71, 54, 111),
                                fontSize: MediaQuery.of(context).size.width/24)),
                        Row(
                          children: [
                            Text("- Rs ",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'GothamMedium',
                                    color: Color.fromARGB(255, 71, 54, 111),
                                    fontSize: MediaQuery.of(context).size.width/24)),
                            Text("1803",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'GothamMedium',
                                    color: Color.fromARGB(255, 71, 54, 111),
                                    fontSize: MediaQuery.of(context).size.width/24)),
                          ],
                        ),
                      ],
                    ),
                    if (couponTextEditingController.text == "xyz")
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Coupon Savings ",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'GothamMedium',
                                  color: Color.fromARGB(255, 71, 54, 111),
                                  fontSize: MediaQuery.of(context).size.width/24)),
                          Row(
                            children: [
                              Text("- Rs ",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'GothamMedium',
                                      color: Color.fromARGB(255, 71, 54, 111),
                                      fontSize: MediaQuery.of(context).size.width/24)),
                              Text("86",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'GothamMedium',
                                      color: Color.fromARGB(255, 71, 54, 111),
                                      fontSize: MediaQuery.of(context).size.width/24)),
                            ],
                          ),
                        ],
                      ),
                    if (checkValue == true)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Gift",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'GothamMedium',
                                  color: Color.fromARGB(255, 71, 54, 111),
                                  fontSize: MediaQuery.of(context).size.width/24)),
                          Row(
                            children: [
                              Text("Rs ",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'GothamMedium',
                                      color: Color.fromARGB(255, 71, 54, 111),
                                      fontSize: MediaQuery.of(context).size.width/24)),
                              Text("300",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontFamily: 'GothamMedium',
                                      color: Color.fromARGB(255, 71, 54, 111),
                                      fontSize: MediaQuery.of(context).size.width/24)),
                            ],
                          ),
                        ],
                      ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Delivery",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'GothamMedium',
                                color: Color.fromARGB(255, 71, 54, 111),
                                fontSize: MediaQuery.of(context).size.width/24)),
                        (delivery == false || totalAmt < 300)
                            ? Text(
                                "Free",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.rasa(
                                    textStyle: TextStyle(
                                        color: Color.fromARGB(255, 71, 54, 111),
                                        fontSize: MediaQuery.of(context).size.width/24)),
                              )
                            : Row(
                                children: [
                                  Text(
                                    "Rs ",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: 'GothamMedium',
                                        color: Color.fromARGB(255, 71, 54, 111),
                                        fontSize: MediaQuery.of(context).size.width/24),
                                  ),
                                  Text("300",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: 'GothamMedium',
                                          color:
                                              Color.fromARGB(255, 71, 54, 111),
                                          fontSize: MediaQuery.of(context).size.width/24)),
                                ],
                              )
                      ],
                    )
                  ],
                ),
                Divider(
                  color: Color.fromARGB(255, 71, 54, 111),
                  height: 10,
                  thickness: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Total Amount ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'GothamMedium',
                            color: Color.fromARGB(255, 71, 54, 111),
                            fontSize: MediaQuery.of(context).size.width/24)),
                    Row(
                      children: [
                        Text(
                          " Rs",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'GothamMedium',
                              color: Color.fromARGB(255, 71, 54, 111),
                              fontSize: MediaQuery.of(context).size.width/24),
                        ),
                        Text("3949",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'GothamMedium',
                                color: Color.fromARGB(255, 71, 54, 111),
                                fontSize: MediaQuery.of(context).size.width/24)),
                      ],
                    ),
                  ],
                ),
                ElevatedButton(
                  child: Text("Confirm Order",
                      style: TextStyle(
                          fontFamily: 'GothamMedium',
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.width/24)),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: totalAmt == 0.00
                        ? Colors.grey
                        : Color.fromARGB(255, 71, 54, 111),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
