import 'package:app_food/constants/constants.dart';
import 'package:app_food/screens/home/widget-home/best-seller-item.dart';
import 'package:flutter/material.dart';

class BestSeller extends StatefulWidget {
  BestSeller({Key? key}) : super(key: key);

  @override
  _BestSellerState createState() => _BestSellerState();
}

class _BestSellerState extends State<BestSeller> {
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
                "Best Seller",
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
          Row(
            children: [BestSellerItem(), BestSellerItem()],
          )
        ],
      ),
    );
  }
}
