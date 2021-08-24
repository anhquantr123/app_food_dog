import 'package:app_food/constants/constants.dart';
import 'package:flutter/material.dart';

class SpecialDeal extends StatefulWidget {
  SpecialDeal({Key? key}) : super(key: key);

  @override
  _SpecialDealState createState() => _SpecialDealState();
}

class _SpecialDealState extends State<SpecialDeal> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //crossAxisAlignment: ,
            children: [
              Text(
                "Special Deal",
                style: TextStyle(
                    fontSize: textSizeHeading, fontWeight: FontWeight.bold),
              ),
              Text(
                "See all",
                style:
                    TextStyle(fontSize: textSizeBody, color: Color(0xFFEF7C91)),
              )
            ],
          ),
          Container(
            height: 180,
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Image(
              image: AssetImage("assets/images/special_deal.png"),
            ),
          )
        ],
      ),
    );
  }
}
