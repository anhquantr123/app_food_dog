import 'package:app_food/screens/home/widget-home/category.dart';
import 'package:app_food/widget/search.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 5),
      scrollDirection: Axis.vertical,
      child: Column(
        children: [Search(), Category()],
      ),
    ));
  }
}
