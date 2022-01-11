import 'package:app_food/constants/constants.dart';
import 'package:app_food/screens/account/account-screen.dart';
import 'package:app_food/screens/chat/chat-screen.dart';
import 'package:app_food/screens/home/home_screen.dart';
import 'package:app_food/screens/notification/notification-screen.dart';

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
  List<Map<String, dynamic>> _listIcons = [
    {
      "icon": "assets/icons/home.svg",
      "lable": "Home",
    },
    {
      "icon": "assets/icons/chat.svg",
      "lable": "Chat",
    },
    {"icon": "assets/icons/notification.svg", "lable": "Notification"},
    {"icon": "assets/icons/user.svg", "lable": "Account"},
  ];

  List<Widget> _listScreens = [
    HomeScreen(),
    ChatScreen(),
    NotificationScreen(),
    AccountScreen(),
  ];
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
          body: _listScreens[indexScreen],
          bottomNavigationBar: BottomNavigationBar(
            showSelectedLabels: true,
            currentIndex: indexScreen,
            elevation: 0,
            items: [
              ...List.generate(
                  _listIcons.length,
                  (index) => BottomNavigationBarItem(
                      icon: SvgPicture.asset(_listIcons[index]['icon']),
                      label: _listIcons[index]['lable']))
            ],
            onTap: (index) {
              setState(() {
                indexScreen = index;
              });
            },
          ),
        ));
  }
}
