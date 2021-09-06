import 'package:app_food/constants/constants.dart';
import 'package:app_food/screens/account/account-screen.dart';
import 'package:app_food/screens/chat/chat-screen.dart';
import 'package:app_food/screens/home/home_screen.dart';
import 'package:app_food/screens/notification/notification-screen.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int indexScreen = 0;
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
      home: Scaffold(
        body: Screen(),
        bottomNavigationBar: bottomTapNavigation(),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Screen() {
    switch (indexScreen) {
      case 0:
        return HomeScreen();
      case 1:
        return ChatScreen();
      case 2:
        return NotificationScreen();
      case 3:
        return AccountScreen();
      default:
        return HomeScreen();
    }
  }

  Widget bottomTapNavigation() {
    return BottomNavyBar(
        selectedIndex: indexScreen,
        items: [
          BottomNavyBarItem(
              icon: SvgPicture.asset("assets/icons/home.svg"),
              title: Text("Home")),
          BottomNavyBarItem(
              icon: SvgPicture.asset("assets/icons/chat.svg"),
              title: Text("Chat")),
          BottomNavyBarItem(
              icon: SvgPicture.asset("assets/icons/notification.svg"),
              title: Text("Notification")),
          BottomNavyBarItem(
              icon: SvgPicture.asset("assets/icons/user.svg"),
              title: Text("Account")),
        ],
        onItemSelected: (index) => setState(() => this.indexScreen = index));
  }
}
