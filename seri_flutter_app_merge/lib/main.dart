import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seri_flutter_app/homescreen/screens/home_screen.dart';
import 'package:seri_flutter_app/login&signup/screens/login.dart';
import 'package:seri_flutter_app/update_customer/controller/update_controller.dart';
import 'package:seri_flutter_app/update_customer/password/controller/password_controller.dart';
import 'package:sizer/sizer.dart';

import 'login&signup/controller/login_controller.dart';
import 'my-order-detail-page/screens/myOrderDetailPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // final homePage = Bottom();
  // final loginPage = LoginPage();
  //
  // final loginController = LoginController();
  // bool isAuthorized = await loginController.isUserAuthorized();
  Widget defaultHome =
      new LoginPage(); // isAuthorized ? homePage : loginPage;

  runApp(
    MultiProvider(
      providers: [
        Provider<LoginController>(create: (_) => LoginController()),
        Provider<UpdateController>(create: (_) => UpdateController()),
        Provider<PasswordController>(create: (_) => PasswordController()),
        //     Provider<AnnouncementsController>(
        //         create: (_) => AnnouncementsController()),
        //     Provider<CompetitionController>(create: (_) => CompetitionController()),
        //     Provider<PaymentController>(create: (_) => PaymentController()),
        //     Provider<RatingController>(create: (_) => RatingController())
      ],
      child: MyApp(startupPage: defaultHome),
    ),
  );
}

class MyApp extends StatelessWidget {
  final Widget startupPage;

  MyApp({this.startupPage});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          home: MyHomePage(startupPage: startupPage),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  final Widget startupPage;

  MyHomePage({this.startupPage});

  @override
  SplashScreenState createState() =>
      SplashScreenState(startupPage: startupPage);
}

class SplashScreenState extends State<MyHomePage> {
  final Widget startupPage;

  SplashScreenState({this.startupPage});

  MediaQueryData queryData;

  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => HomeScreen(startupPage: startupPage))));
  }

  @override
  Widget build(BuildContext context) {
    queryData = MediaQuery.of(context);
    return Center(
      child: Container(
        color: Color.fromARGB(255, 71, 54, 111),
        height: queryData.size.height,
        width: queryData.size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'lib/assets/images/splash_logo.png',
              height: (queryData.size.height / 3.5),
              width: (queryData.size.height / 3),
              alignment: Alignment.center,
            ),
            Center(
                child: Text('Its all about books..',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13.0.sp,
                      fontFamily: 'GothamMedium',
                      backgroundColor: Colors.transparent,
                      decoration: TextDecoration.none,
                      color: Color.fromARGB(255, 254, 254, 254),
                    ))),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final Widget startupPage;

  const HomeScreen({this.startupPage});

  @override
  Widget build(BuildContext context) {
    return startupPage;
  }
}
