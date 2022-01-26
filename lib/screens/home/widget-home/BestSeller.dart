import 'dart:developer';

import 'package:app_food/constants/constants.dart';
import 'package:app_food/models/products.dart';
import 'package:app_food/widget/SectionTitle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BestSeller extends StatefulWidget {
  const BestSeller({Key? key}) : super(key: key);

  @override
  _BestSellerState createState() => _BestSellerState();
}

class _BestSellerState extends State<BestSeller> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          SectionTitle(
            title: "Bess Seller",
            press: () {
              log("[log -best seller] hello anh quan ");
            },
          ),
          Container(
            height: 180,
            width: 150,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 10)
                ]),
            child: Column(
              children: [
                Container(
                  height: 125,
                  child: Stack(
                    children: [
                      Positioned(
                          child: Container(
                        height: 80,
                        decoration: BoxDecoration(
                            color: primaryColor.withOpacity(0.7),
                            shape: BoxShape.circle),
                      )),
                      Positioned(
                        child: Image.asset(
                          bestSellerProduct[0]['image'].toString(),
                          height: 120,
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          (bestSellerProduct[0]['title'].toString()),
                          style: textHeadingStyleItem,
                        ),
                        Text(
                          (bestSellerProduct[0]['price'].toString()),
                          style: TextStyle(color: primaryColor),
                        )
                      ],
                    ),
                    InkWell(
                      radius: 10,
                      onTap: () {
                        log("[log-test]");
                      },
                      child: SvgPicture.asset("assets/icons/plus.svg"),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
