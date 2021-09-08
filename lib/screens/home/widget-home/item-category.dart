import 'package:app_food/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:touchable_opacity/touchable_opacity.dart';

class ItemCategory extends StatelessWidget {
  final Widget image;
  final String text;
  const ItemCategory({Key? key, required this.image, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TouchableOpacity(
      activeOpacity: 0.5,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        height: 105,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Center(
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 10), child: image),
              Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: Text(
                  text,
                  style: TextStyle(
                      fontSize: textSizeBody, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
