import 'package:flutter/material.dart';
import 'package:intent/action.dart' as android_action;
import 'package:intent/intent.dart' as android_intent;
import 'package:seri_flutter_app/app-bar/app_bar.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key key}) : super(key: key);

  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  MediaQueryData queryData;

  @override
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);

    return Scaffold(
      appBar: buildAppBarWithText(context, 'Contact Us'),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
          //  height: MediaQuery.of(context).size.height,
            child: Column(
             // mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              //  new Spacer(),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0.0, 0, 0.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                   // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('lib/assets/icons/call.png',
                          width: (queryData.size.width / 10)),
                      SizedBox(width: queryData.size.width / 10),
                      TextButton(
                        style:
                            TextButton.styleFrom(primary: Colors.transparent),
                        onPressed: () => android_intent.Intent()
                          ..setAction(android_action.Action.ACTION_VIEW)
                          ..setData(Uri(scheme: "tel", path: "+919960622176"))
                          ..startActivity().catchError((e) => print(e)),
                        child: Text(
                          '9960622176',
                          style: TextStyle(
                            fontFamily: 'GothamMedium',
                            color: Color.fromARGB(255, 71, 54, 111),
                            fontSize: 13.0.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0.0, 0, 0.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('lib/assets/icons/location.png',
                          width: (queryData.size.width / 10)),
                      SizedBox(width: queryData.size.width / 10),
                      TextButton(
                        style:
                            TextButton.styleFrom(primary: Colors.transparent),
                        onPressed: () async => await launch(
                            "https://www.google.com/maps/place/Dream+House/@19.2072,73.1765113,17z/data=!4m8!1m2!2m1!1sDream+House,+Kansai+section,+Ambernath+(E),+%5CnPincode+-+421501,+Dist-+Thane!3m4!1s0x3be7947e4907f4c3:0xfddd74faa60817e8!8m2!3d19.207164!4d73.1787409"),
                        child: Text(
                          '627, Dream House, Kansai\nsection, Ambernath (E), \nPincode - 421501, Dist- Thane',
                          style: TextStyle(
                            fontFamily: 'GothamMedium',
                            color: Color.fromARGB(255, 71, 54, 111),
                            fontSize: 13.0.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0.0, 0, 0.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('lib/assets/icons/mail.png',
                          width: (queryData.size.width / 10)),
                      SizedBox(width: queryData.size.width / 10),
                      TextButton(
                        style:
                            TextButton.styleFrom(primary: Colors.transparent),
                        onPressed: () => android_intent.Intent()
                          ..setAction(android_action.Action.ACTION_VIEW)
                          ..setData(Uri(
                              scheme: "mailto", path: "Pluscrown58@gmail.com"))
                          ..startActivity().catchError((e) => print(e)),
                        child: Text(
                          'Pluscrown58@gmail.com',
                          style: TextStyle(
                            fontFamily: 'GothamMedium',
                            color: Color.fromARGB(255, 71, 54, 111),
                            fontSize: 13.0.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.fromLTRB(0, 0.0, 0, 0.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('lib/assets/icons/whatsapp icon.png',
                          width: (queryData.size.width / 10)),
                      SizedBox(width: queryData.size.width / 10),
                      TextButton(
                        style:
                            TextButton.styleFrom(primary: Colors.transparent),
                        onPressed: () async => await launch(
                            // Change to working number in Production
                            "https://wa.me/+919021762183?text=Hello"),
                        child: Text(
                          '9960622176',
                          style: TextStyle(
                            fontFamily: 'GothamMedium',
                            color: Color.fromARGB(255, 71, 54, 111),
                            fontSize: 13.0.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
               // new Spacer(),
                SizedBox(height: 30),
                Container(
                  margin: EdgeInsets.fromLTRB(0.0, 100.0, 10.0, 0.0),
                  alignment: Alignment.bottomRight,
                  child: Image.asset(
                    'lib/assets/icons/contact_us_bottom_image.jpg',
                    height: (queryData.size.width / 2),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                        alignment: Alignment.bottomRight,
                        child: Image.asset(
                          'lib/assets/images/bottom_logo.jpg',
                          width: (queryData.size.width / 3),
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
