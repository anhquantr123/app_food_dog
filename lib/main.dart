import 'package:app_food/constants/constants.dart';
import 'package:app_food/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App Food Dog",
      theme: ThemeData(
          primaryColor: primaryColor,
          scaffoldBackgroundColor: Colors.white,
          textTheme: TextTheme(
              bodyText1: TextStyle(color: textColorBlack),
              bodyText2: TextStyle(color: textColorLightBlack))),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
  // This widget is the root of your application.

}
