import 'package:flutter/material.dart';
import 'package:seri_flutter_app/app-bar/app_bar.dart';
import 'package:sizer/sizer.dart';

class FAQSection extends StatefulWidget {
  const FAQSection({Key key}) : super(key: key);

  @override
  _FAQSectionState createState() => _FAQSectionState();
}

class _FAQSectionState extends State<FAQSection> {
  MediaQueryData queryData;

  @override
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: Scaffold(
        appBar: buildAppBarWithText(context, "FAQ's"),
        backgroundColor: Color.fromARGB(255, 249, 249, 249),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.fromLTRB(
              5,
              30,
              10,
              5,
            ),
            child: Wrap(
              direction: Axis.horizontal,
              children: [
                Theme(
                  data: ThemeData().copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    title: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '*',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width / 22,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 71, 54, 111),
                          ),
                        ),
                        SizedBox(width: 5),
                        Flexible(
                          child: Text(
                            "What about the Refunds If the product is returned?",
                            style: TextStyle(
                              fontFamily: 'GothamMedium',
                              fontSize: MediaQuery.of(context).size.width / 22,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 71, 54, 111),
                            ),
                          ),
                        ),
                      ],
                    ),
                    childrenPadding: EdgeInsets.all(0),
                    initiallyExpanded: false,
                    backgroundColor: Colors.transparent,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(8, 0, 10, 0),
                            child: Image.asset(
                              'lib/assets/icons/rightarrow.png',
                              height: queryData.size.height / 40,
                              width: queryData.size.width / 15,
                            ),
                          ),
                          Flexible(
                            child: Container(
                              padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                              child: Text(
                                "You can shop easily by visiting our website, But we recommend creating an account on pluscrown. With minimum details required. You can keep the track of your wishlist, receive the daily updates, offers and discounts just for you.",
                                style: TextStyle(
                                  fontFamily: 'GothamMedium',
                                  fontSize: MediaQuery.of(context).size.width / 22,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 71, 54, 111),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Theme(
                  data: ThemeData().copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    title: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '*',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width / 22,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 71, 54, 111),
                          ),
                        ),
                        SizedBox(width: 5),
                        Flexible(
                          child: Text(
                            "How do you pay at Pluscrown, Payment process in Pluscrown?",
                            style: TextStyle(
                              fontFamily: 'GothamMedium',
                              fontSize: MediaQuery.of(context).size.width / 22,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 71, 54, 111),
                            ),
                          ),
                        ),
                      ],
                    ),
                    initiallyExpanded: false,
                    backgroundColor: Colors.transparent,
                    collapsedBackgroundColor: Colors.transparent,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(8, 0, 10, 0),
                            child: Image.asset(
                              'lib/assets/icons/rightarrow.png',
                              height: queryData.size.height / 40,
                              width: queryData.size.width / 15,
                            ),
                          ),
                          Flexible(
                            child: Container(
                              child: Text(
                                "There are many ways you can make payments and you can trust our payment gateways system. You can also opt. for cash on delivery methods, We also accept visa, debit and credit cards.",
                                style: TextStyle(
                                  fontFamily: 'GothamMedium',
                                  fontSize: MediaQuery.of(context).size.width / 22,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 71, 54, 111),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Theme(
                  data: ThemeData().copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    title: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '*',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width / 22,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 71, 54, 111),
                          ),
                        ),
                        SizedBox(width: 5),
                        Flexible(
                          child: Text(
                            "What are the delivery charges?",
                            style: TextStyle(
                              fontFamily: 'GothamMedium',
                              fontSize: MediaQuery.of(context).size.width / 22,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 71, 54, 111),
                            ),
                          ),
                        ),
                      ],
                    ),
                    initiallyExpanded: false,
                    backgroundColor: Colors.transparent,
                    collapsedBackgroundColor: Colors.transparent,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(8, 0, 10, 0),
                            child: Image.asset(
                              'lib/assets/icons/rightarrow.png',
                              height: queryData.size.height / 40,
                              width: queryData.size.width / 15,
                            ),
                          ),
                          Flexible(
                            child: Container(
                              child: Text(
                                "Delivery charges are the same for all products if you buy products worth Rs.300, You will not have to pay shipping charges and If you purchase the product less than 300rs then you have to pay a delivery fee of Rs.40.",
                                style: TextStyle(
                                  fontFamily: 'GothamMedium',
                                  fontSize: MediaQuery.of(context).size.width / 22,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 71, 54, 111),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Theme(
                  data: ThemeData().copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    title: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '*',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width / 22,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 71, 54, 111),
                          ),
                        ),
                        SizedBox(width: 5),
                        Flexible(
                          child: Text(
                            "What is the estimated time of Arrival(ETA)?",
                            style: TextStyle(
                              fontFamily: 'GothamMedium',
                              fontSize: MediaQuery.of(context).size.width / 22,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 71, 54, 111),
                            ),
                          ),
                        ),
                      ],
                    ),
                    initiallyExpanded: false,
                    backgroundColor: Colors.transparent,
                    collapsedBackgroundColor: Colors.transparent,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(8, 0, 10, 0),
                            child: Image.asset(
                              'lib/assets/icons/rightarrow.png',
                              height: queryData.size.height / 40,
                              width: queryData.size.width / 15,
                            ),
                          ),
                          Flexible(
                            child: Container(
                              padding: EdgeInsets.fromLTRB(0, 0, 5, 10),
                              child: Text(
                                "We will thrive to deliver your product within 2 working days.",
                                style: TextStyle(
                                  fontFamily: 'GothamMedium',
                                  fontSize: MediaQuery.of(context).size.width / 22,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 71, 54, 111),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Theme(
                  data: ThemeData().copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    title: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '*',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width / 22,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 71, 54, 111),
                          ),
                        ),
                        SizedBox(width: 5),
                        Flexible(
                          child: Text(
                            "How you can track your orders and check the status?",
                            style: TextStyle(
                              fontFamily: 'GothamMedium',
                              fontSize: MediaQuery.of(context).size.width / 22,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 71, 54, 111),
                            ),
                          ),
                        ),
                      ],
                    ),
                    initiallyExpanded: false,
                    backgroundColor: Colors.transparent,
                    collapsedBackgroundColor: Colors.transparent,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(8, 0, 10, 0),
                            child: Image.asset(
                              'lib/assets/icons/rightarrow.png',
                              height: queryData.size.height / 40,
                              width: queryData.size.width / 15,
                            ),
                          ),
                          Flexible(
                            child: Container(
                              padding: EdgeInsets.fromLTRB(0, 0, 5, 10),
                              child: Text(
                                "Once you login into your account, You can check the order you want to track and then select view order to see details after that click on track shipment.",
                                style: TextStyle(
                                  fontFamily: 'GothamMedium',
                                  fontSize: MediaQuery.of(context).size.width / 22,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 71, 54, 111),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Theme(
                  data: ThemeData().copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    title: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '*',
                          style: TextStyle(
                            fontFamily: 'GothamMedium',
                            fontSize: MediaQuery.of(context).size.width / 22,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 71, 54, 111),
                          ),
                        ),
                        SizedBox(width: 5),
                        Flexible(
                          child: Text(
                            "How can I Cancel my order?",
                            style: TextStyle(
                              fontFamily: 'GothamMedium',
                              fontSize: MediaQuery.of(context).size.width / 22,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 71, 54, 111),
                            ),
                          ),
                        ),
                      ],
                    ),
                    initiallyExpanded: false,
                    backgroundColor: Colors.transparent,
                    collapsedBackgroundColor: Colors.transparent,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(8, 0, 10, 0),
                            child: Image.asset(
                              'lib/assets/icons/rightarrow.png',
                              height: queryData.size.height / 40,
                              width: queryData.size.width / 15,
                            ),
                          ),
                          Flexible(
                            child: Container(
                              padding: EdgeInsets.fromLTRB(0, 0, 5, 10),
                              child: Text(
                                "You can cancel your order within 48hrs after placing it. Go to my orders, select the product and click on cancel order option.",
                                style: TextStyle(
                                  fontFamily: 'GothamMedium',
                                  fontSize: MediaQuery.of(context).size.width / 22,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 71, 54, 111),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Theme(
                  data: ThemeData().copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    title: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '*',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width / 22,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 71, 54, 111),
                          ),
                        ),
                        SizedBox(width: 5),
                        Flexible(
                          child: Text(
                            "If I receive a defective or wrong product, Then How do I return it?",
                            style: TextStyle(
                              fontFamily: 'GothamMedium',
                              fontSize:MediaQuery.of(context).size.width / 22,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 71, 54, 111),
                            ),
                          ),
                        ),
                      ],
                    ),
                    initiallyExpanded: false,
                    backgroundColor: Colors.transparent,
                    collapsedBackgroundColor: Colors.transparent,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(8, 0, 10, 0),
                            child: Image.asset(
                              'lib/assets/icons/rightarrow.png',
                              height: queryData.size.height / 40,
                              width: queryData.size.width / 15,
                            ),
                          ),
                          Flexible(
                            child: Container(
                              padding: EdgeInsets.fromLTRB(0, 0, 5, 10),
                              child: Text(
                                "If you receive a defective or wrong product, You will have to go to your account and select the order you want to return and just click the return option, We will collect the product from you.",
                                style: TextStyle(
                                  fontFamily: 'GothamMedium',
                                  fontSize: MediaQuery.of(context).size.width / 22,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 71, 54, 111),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Theme(
                  data: ThemeData().copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    title: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '*',
                          style: TextStyle(
                            fontFamily: 'GothamMedium',
                            fontSize: MediaQuery.of(context).size.width / 22,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 71, 54, 111),
                          ),
                        ),
                        SizedBox(width: 5),
                        Flexible(
                          child: Text(
                            "How can I contact Pluscrown Customer Support?",
                            style: TextStyle(
                              fontFamily: 'GothamMedium',
                              fontSize: MediaQuery.of(context).size.width / 22,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 71, 54, 111),
                            ),
                          ),
                        ),
                      ],
                    ),
                    initiallyExpanded: false,
                    backgroundColor: Colors.transparent,
                    collapsedBackgroundColor: Colors.transparent,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(8, 0, 10, 0),
                            child: Image.asset(
                              'lib/assets/icons/rightarrow.png',
                              height: queryData.size.height / 40,
                              width: queryData.size.width / 15,
                            ),
                          ),
                          Flexible(
                            child: Container(
                              padding: EdgeInsets.fromLTRB(0, 0, 5, 10),
                              child: Text(
                                "You can find our contact details on our Contact Us page, Along with the Customer Support no.",
                                style: TextStyle(
                                  fontFamily: 'GothamMedium',
                                  fontSize: MediaQuery.of(context).size.width / 22,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 71, 54, 111),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Theme(
                  data: ThemeData().copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    title: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '*',
                          style: TextStyle(
                            fontFamily: 'GothamMedium',
                            fontSize: MediaQuery.of(context).size.width / 22,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 71, 54, 111),
                          ),
                        ),
                        SizedBox(width: 5),
                        Flexible(
                          child: Text(
                            "Which products are not eligible for return policy?",
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width / 22,
                              fontFamily: 'GothamMedium',
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 71, 54, 111),
                            ),
                          ),
                        ),
                      ],
                    ),
                    initiallyExpanded: false,
                    backgroundColor: Colors.transparent,
                    collapsedBackgroundColor: Colors.transparent,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(8, 0, 10, 0),
                            child: Image.asset(
                              'lib/assets/icons/rightarrow.png',
                              height: queryData.size.height / 40,
                              width: queryData.size.width / 15,
                            ),
                          ),
                          Flexible(
                            child: Container(
                              padding: EdgeInsets.fromLTRB(0, 0, 5, 10),
                              child: Text(
                                "Products value ranging below Rs.100 are not eligible for Return.",
                                style: TextStyle(
                                  fontFamily: 'GothamMedium',
                                  fontSize: MediaQuery.of(context).size.width / 22,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 71, 54, 111),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Theme(
                  data: ThemeData().copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    title: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '*',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width / 22,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 71, 54, 111),
                          ),
                        ),
                        SizedBox(width: 5),
                        Flexible(
                          child: Text(
                            "How can I bulk order products for Corporate sectors?",
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width / 22,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 71, 54, 111),
                            ),
                          ),
                        ),
                      ],
                    ),
                    initiallyExpanded: false,
                    backgroundColor: Colors.transparent,
                    collapsedBackgroundColor: Colors.transparent,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(8, 0, 10, 0),
                            child: Image.asset(
                              'lib/assets/icons/rightarrow.png',
                              height: queryData.size.height / 40,
                              width: queryData.size.width / 15,
                            ),
                          ),
                          Flexible(
                            child: Container(
                              padding: EdgeInsets.fromLTRB(0, 0, 5, 10),
                              child: Text(
                                "You can write to 'email to be inserted' for your Corporate order requirements.",
                                style: TextStyle(
                                  fontFamily: 'GothamMedium',
                                  fontSize: MediaQuery.of(context).size.width / 22,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 71, 54, 111),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Theme(
                  data: ThemeData().copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    title: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '*',
                          style: TextStyle(
                            fontFamily: 'GothamMedium',
                            fontSize: MediaQuery.of(context).size.width / 22,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 71, 54, 111),
                          ),
                        ),
                        SizedBox(width: 5),
                        Flexible(
                          child: Text(
                            "I missed the delivery of my order today. What should I do?",
                            style: TextStyle(
                              fontFamily: 'GothamMedium',
                              fontSize: MediaQuery.of(context).size.width / 22,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 71, 54, 111),
                            ),
                          ),
                        ),
                      ],
                    ),
                    initiallyExpanded: false,
                    backgroundColor: Colors.transparent,
                    collapsedBackgroundColor: Colors.transparent,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(8, 0, 10, 0),
                            child: Image.asset(
                              'lib/assets/icons/rightarrow.png',
                              height: queryData.size.height / 40,
                              width: queryData.size.width / 15,
                            ),
                          ),
                          Flexible(
                            child: Container(
                              padding: EdgeInsets.fromLTRB(0, 0, 5, 10),
                              child: Text(
                                "Your order will be delivered within the next day of your current delivery date, before that we give a call to the customer and if you missed it we will contact you for the same.",
                                style: TextStyle(
                                  fontFamily: 'GothamMedium',
                                  fontSize: MediaQuery.of(context).size.width / 22,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 71, 54, 111),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Theme(
                  data: ThemeData().copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    title: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '*',
                          style: TextStyle(
                            fontFamily: 'GothamMedium',
                            fontSize: MediaQuery.of(context).size.width / 22,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 71, 54, 111),
                          ),
                        ),
                        SizedBox(width: 5),
                        Flexible(
                          child: Text(
                            "What should I do if my order is approved but hasn't been shipped yet?",
                            style: TextStyle(
                              fontFamily: 'GothamMedium',
                              fontSize: MediaQuery.of(context).size.width / 22,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 71, 54, 111),
                            ),
                          ),
                        ),
                      ],
                    ),
                    initiallyExpanded: false,
                    backgroundColor: Colors.transparent,
                    collapsedBackgroundColor: Colors.transparent,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(8, 0, 10, 0),
                            child: Image.asset(
                              'lib/assets/icons/rightarrow.png',
                              height: queryData.size.height / 40,
                              width: queryData.size.width / 15,
                            ),
                          ),
                          Flexible(
                            child: Container(
                              padding: EdgeInsets.fromLTRB(0, 0, 5, 10),
                              child: Text(
                                "We send orders within 1-2 days before the delivery date so that they can reach you in time but if there is some problem delivering the products from our end we will inform you accordingly.  Even after that if you don’t receive the order then you can contact our Customer Support.",
                                style: TextStyle(
                                  fontFamily: 'GothamMedium',
                                  fontSize: MediaQuery.of(context).size.width / 22,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 71, 54, 111),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Theme(
                  data: ThemeData().copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    title: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '*',
                          style: TextStyle(
                            fontFamily: 'GothamMedium',
                            fontSize:MediaQuery.of(context).size.width / 22,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 71, 54, 111),
                          ),
                        ),
                        SizedBox(width: 5),
                        Flexible(
                          child: Text(
                            "How do I know my order has been confirmed?",
                            style: TextStyle(
                              fontFamily: 'GothamMedium',
                              fontSize: MediaQuery.of(context).size.width / 22,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 71, 54, 111),
                            ),
                          ),
                        ),
                      ],
                    ),
                    initiallyExpanded: false,
                    backgroundColor: Colors.transparent,
                    collapsedBackgroundColor: Colors.transparent,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(8, 0, 10, 0),
                            child: Image.asset(
                              'lib/assets/icons/rightarrow.png',
                              height: queryData.size.height / 40,
                              width: queryData.size.width / 15,
                            ),
                          ),
                          Flexible(
                            child: Container(
                              padding: EdgeInsets.fromLTRB(0, 0, 5, 10),
                              child: Text(
                                "An confirmation email & SMS will be sent to your registered mobile no. once you've successfully placed your order. We'll also let you know as soon as we ship the product to you along with the tracking Id. You can track the order from My Orders tab.",
                                style: TextStyle(
                                  fontFamily: 'GothamMedium',
                                  fontSize: MediaQuery.of(context).size.width / 22,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 71, 54, 111),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Theme(
                  data: ThemeData().copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    title: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '*',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width / 22,
                            fontFamily: 'GothamMedium',
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 71, 54, 111),
                          ),
                        ),
                        SizedBox(width: 5),
                        Flexible(
                          child: Text(
                            "Why do I need to enter my pin code?",
                            style: TextStyle(
                              fontFamily: 'GothamMedium',
                              fontSize: MediaQuery.of(context).size.width / 22,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 71, 54, 111),
                            ),
                          ),
                        ),
                      ],
                    ),
                    initiallyExpanded: false,
                    backgroundColor: Colors.transparent,
                    collapsedBackgroundColor: Colors.transparent,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(8, 0, 10, 0),
                            child: Image.asset(
                              'lib/assets/icons/rightarrow.png',
                              height: queryData.size.height / 40,
                              width: queryData.size.width / 15,
                            ),
                          ),
                          Flexible(
                            child: Container(
                              padding: EdgeInsets.fromLTRB(0, 0, 5, 10),
                              child: Text(
                                "By knowing your pincode, We can easily deliver products to your location, And you can find out whether particular product delivery is available at your location or not.",
                                style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.width / 22,
                                  fontFamily: 'GothamMedium',
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 71, 54, 111),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Theme(
                  data: ThemeData().copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    title: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '*',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width / 22,
                            fontFamily: 'GothamMedium',
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 71, 54, 111),
                          ),
                        ),
                        SizedBox(width: 5),
                        Flexible(
                          child: Text(
                            "What about the Refunds If the product is returned?",
                            style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width / 22,
                              fontFamily: 'GothamMedium',
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 71, 54, 111),
                            ),
                          ),
                        ),
                      ],
                    ),
                    initiallyExpanded: false,
                    backgroundColor: Colors.transparent,
                    collapsedBackgroundColor: Colors.transparent,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(8, 0, 10, 0),
                            child: Image.asset(
                              'lib/assets/icons/rightarrow.png',
                              height: queryData.size.height / 40,
                              width: queryData.size.width / 15,
                            ),
                          ),
                          Flexible(
                            child: Container(
                              padding: EdgeInsets.fromLTRB(0, 0, 5, 10),
                              child: Text(
                                "You will receive the refund amount within 48hrs, As soon as we collect the product from you.",
                                style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.width / 22,
                                  fontFamily: 'GothamMedium',
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 71, 54, 111),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                new Spacer(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                        padding: EdgeInsets.fromLTRB(0.0, 20.0, 15.0, 10.0),
                        alignment: Alignment.bottomRight,
                        child: Image.asset(
                          'lib/assets/images/bottom_logo.jpg',
                          width: (queryData.size.width / 3),
                        )),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
