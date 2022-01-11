import 'package:app_food/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Category extends StatefulWidget {
  Category({Key? key}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  List<Map<String, dynamic>> _listCategories = [
    {"icon": "assets/images/cat.svg", "title": "Cat"},
    {"icon": "assets/images/dog.svg", "title": "Dog"},
    {"icon": "assets/images/hamster.svg", "title": "Hamster"},
    {"icon": "assets/images/bird.svg", "title": "Bird"}
  ];

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      child: Column(
        children: [
          Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Category",
                style: TextStyle(
                    fontSize: textSizeHeading, fontWeight: FontWeight.bold),
              )),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 101,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _listCategories.length,
                itemBuilder: (context, index) => categoryItem(index)),
          )
        ],
      ),
    );
  }

  Widget categoryItem(int index) => GestureDetector(
        onTap: () {
          setState(() {
            currentIndex = index;
          });
        },
        child: Container(
          margin: EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
              color: currentIndex == index ? Colors.red : Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                )
              ]),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                SvgPicture.asset(_listCategories[index]["icon"]),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    _listCategories[index]["title"],
                    style: TextStyle(
                        color:
                            currentIndex == index ? Colors.white : Colors.black,
                        fontSize: textSizeBody,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ),
      );
}
