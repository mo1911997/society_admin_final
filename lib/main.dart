import 'package:dashboarduidesign/Screens/InsightPage.dart';
import 'package:dashboarduidesign/Screens/ProfilePage.dart';
import 'package:dashboarduidesign/Screens/SplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Screens/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);

    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Raleway',
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => SplashScreen(),
        "/insight": (context) => InsightPage(),
        "/profile": (context) => ProfilePage(),
      },

    );
  }
}