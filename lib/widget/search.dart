import 'package:app_food/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class Search extends StatefulWidget {
  Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        //color: Colors.green,
        margin: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    color: Color(0xFFF6F6F6),
                    borderRadius: BorderRadius.circular(29)),
                width: size.width * 0.8,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Search...",
                      icon: SvgPicture.asset("assets/icons/search.svg"),
                      border: InputBorder.none),
                  style: TextStyle(fontSize: textSizeBody),
                )),
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/icons/shopping-cart.svg'))
          ],
        ));
  }
}
