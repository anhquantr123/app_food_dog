import 'package:app_food/screens/home/widget-home/best-seller.dart';
import 'package:app_food/screens/home/widget-home/category.dart';
import 'package:app_food/screens/home/widget-home/special-deal.dart';
import 'package:app_food/widget/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [Search(), Category(), BestSeller(), SpecialDeal()],
          ),
        ),
      ),
    );
  }
}