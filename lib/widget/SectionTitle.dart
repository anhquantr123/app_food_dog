import 'package:app_food/constants/constants.dart';
import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final GestureTapCallback press;

  const SectionTitle({
    required this.title,
    required this.press,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style:
              TextStyle(fontSize: textSizeHeading, fontWeight: FontWeight.bold),
        ),
        InkWell(
          onTap: press,
          borderRadius: BorderRadius.circular(15),
          child: Container(
            padding: EdgeInsets.all(4),
            child: Text(
              "See all",
              style: TextStyle(color: primaryColor),
            ),
          ),
        )
      ],
    );
  }
}
