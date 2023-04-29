import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddressBook extends StatefulWidget {
  @override
  _AddressBookState createState() => _AddressBookState();
}

class _AddressBookState extends State<AddressBook> {
  bool addressLoaded = false;

  var addressList = [];

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
        ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 5,
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int index) {
              return SingleAddress(
                  name: "Ohm Chadwick",
                  phoneNo: "3087280934",
                  pinCode: "416112",
                  city: "Thane",
                  district: "Thane",
                  flatNo: "480/203",
                  area: "sai section",
                  landmark: "near data mandir",
                  type: "default");
            });
  }
}

class SingleAddress extends StatefulWidget {
  final String name;
  final String phoneNo;
  final String pinCode;
  final String city;
  final flatNo;
  final String area;
  final String landmark;
  final type;
  final district;

  SingleAddress(
      {this.name,
      this.phoneNo,
      this.pinCode,
      this.city,
      this.district,
      this.area,
      this.landmark,
      this.type,
      this.flatNo});

  @override
  _SingleAddressState createState() => _SingleAddressState();
}

class _SingleAddressState extends State<SingleAddress> {
  bool checkValue = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: MediaQuery.of(context).size.width - 15,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Color.fromARGB(255, 71, 54, 111)),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Row(
                  children: [
                    SizedBox(
                      height: 8,
                      width: 8,
                      child: Transform.scale(
                        scale: 1,
                        child: Checkbox(
                          activeColor: Color.fromARGB(255, 71, 54, 111),
                          value: checkValue,
                          onChanged: (newValue) {
                            setState(() {
                              checkValue = true;
                            });
                          },
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(widget.name,
                        style: TextStyle(
                            fontFamily: 'GothamMedium',
                            color: Color.fromARGB(255, 71, 54, 111),
                            fontSize: MediaQuery.of(context).size.width / 18))
                  ],
                ),
                GestureDetector(
                  onTap: () {},
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Icon(
                      Icons.more_vert,
                      color: Color.fromARGB(255, 71, 54, 111),
                    ),
                  ),
                ),
              ]),
              SizedBox(height: 6),
              Padding(
                padding: const EdgeInsets.only(left: 22.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (widget.type == "default")
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Default Address",
                              style: TextStyle(
                                color: Colors.green,
                                fontFamily: 'GothamMedium',
                                fontSize: MediaQuery.of(context).size.width / 26,
                              ))),
                    SizedBox(height: 6),
                    Row(
                      children: [
                        Text("Plot no. ",
                            //  textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color.fromARGB(255, 71, 54, 111),
                                fontWeight: FontWeight.w600,
                                fontFamily: 'GothamMedium',
                                fontSize: MediaQuery.of(context).size.width / 27)),
                        Text(widget.flatNo + ", ",
                            //   textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color.fromARGB(255, 71, 54, 111),
                                fontWeight: FontWeight.w600,
                                fontFamily: 'GothamMedium',
                                fontSize: MediaQuery.of(context).size.width / 27)),
                        Text(widget.area + ",",
                            // textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color.fromARGB(255, 71, 54, 111),
                                fontWeight: FontWeight.w600,
                                fontFamily: 'GothamMedium',
                                fontSize: MediaQuery.of(context).size.width / 27)),
                      ],
                    ),
                    if (widget.landmark != null)
                      Text(widget.landmark + ", ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'GothamMedium',
                              color: Color.fromARGB(255, 71, 54, 111),
                              fontWeight: FontWeight.w600,
                              fontSize: MediaQuery.of(context).size.width / 27)),
                    Row(
                      children: [
                        Text("City - ",
                            //  textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'GothamMedium',
                                color: Color.fromARGB(255, 71, 54, 111),
                                fontWeight: FontWeight.w600,
                                fontSize: MediaQuery.of(context).size.width / 27)),
                        Text(widget.city + ", ",
                            //   textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'GothamMedium',
                                color: Color.fromARGB(255, 71, 54, 111),
                                fontWeight: FontWeight.w600,
                                fontSize: MediaQuery.of(context).size.width / 27)),
                        Text("Dist - ",
                            style: TextStyle(
                                fontFamily: 'GothamMedium',
                                color: Color.fromARGB(255, 71, 54, 111),
                                fontWeight: FontWeight.w600,
                                fontSize: MediaQuery.of(context).size.width / 27)),
                        Text(widget.district + ", ",
                            style: TextStyle(
                                color: Color.fromARGB(255, 71, 54, 111),
                                fontWeight: FontWeight.w600,
                                fontFamily: 'GothamMedium',
                                fontSize: MediaQuery.of(context).size.width / 27)),
                      ],
                    ),
                    Row(
                      children: [
                        Text("PinCode - ",
                            //  textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'GothamMedium',
                                color: Color.fromARGB(255, 71, 54, 111),
                                fontWeight: FontWeight.w600,
                                fontSize: MediaQuery.of(context).size.width / 27)),
                        Text(widget.pinCode,
                            style: TextStyle(
                                fontFamily: 'GothamMedium',
                                color: Color.fromARGB(255, 71, 54, 111),
                                fontWeight: FontWeight.w600,
                                fontSize: MediaQuery.of(context).size.width / 27)),
                      ],
                    ),
                    SizedBox(height: 6),
                    Row(children: [
                      Text("Phone Number - ",
                          style: TextStyle(
                              fontFamily: 'GothamMedium',
                              color: Color.fromARGB(255, 71, 54, 111),
                              fontWeight: FontWeight.w600,
                              fontSize: MediaQuery.of(context).size.width / 27)),
                      Text(widget.phoneNo,
                          style: TextStyle(
                              fontFamily: 'GothamMedium',
                              color: Color.fromARGB(255, 71, 54, 111),
                              fontWeight: FontWeight.w600,
                              fontSize: MediaQuery.of(context).size.width / 27)),
                    ])
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
