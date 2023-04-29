import 'package:flutter/material.dart';
import 'package:seri_flutter_app/app-bar/app_bar.dart';

class OrderCancellation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBarWithText(context, 'Order Cancellation Policy'),
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            children: [
              SizedBox(height: 15),
              Container(
                child: Text(
                  "* You can cancel your order, Before it is accepted by you.",
                  style: TextStyle(
                      fontFamily: 'GothamMedium',
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.width / 22,
                      color: Color.fromARGB(255, 71, 54, 111)),
                ),
              ),
              SizedBox(height: 5),
              Container(
                  child: Text(
                "* You can cancel your order, Before it is shipped or Dispatched along with a reason for cancellation.",
                style: TextStyle(
                    fontFamily: 'GothamMedium',
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.width / 22,
                    color: Color.fromARGB(255, 71, 54, 111)),
              )),
              SizedBox(height: 5),
              Container(
                child: Text(
                  "* Those Who return any product, The amount will be credited automatically in your bank account within 48 hours. Those items which are to be returned or exchanged must be unused.(check and add)",
                  style: TextStyle(
                      fontFamily: 'GothamMedium',
                      fontWeight: FontWeight.bold,
                      fontSize: MediaQuery.of(context).size.width / 22,
                      color: Color.fromARGB(255, 71, 54, 111)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 2.5),
                child: Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2,
                      child: Image.asset("lib/assets/images/PlusCrown.png"),
                    )),
              )
            ],
          ),
        )));
  }
}
