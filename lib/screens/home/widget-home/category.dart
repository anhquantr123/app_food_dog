import 'package:app_food/constants/constants.dart';
import 'package:app_food/screens/home/widget-home/item-category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        child: Container(
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text("Category",
                    style: TextStyle(
                        fontSize: textSizeHeading, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    ItemCategory(
                      image: SvgPicture.asset("assets/images/cat.svg"),
                      text: "Cat",
                    ),
                    ItemCategory(
                      image: SvgPicture.asset("assets/images/dog.svg"),
                      text: "Dog",
                    ),
                    ItemCategory(
                      image: SvgPicture.asset("assets/images/hamster.svg"),
                      text: "Hamster",
                    ),
                    ItemCategory(
                      image: SvgPicture.asset("assets/images/bird.svg"),
                      text: "Bird",
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
