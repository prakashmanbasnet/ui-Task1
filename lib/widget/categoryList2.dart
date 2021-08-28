import 'package:flutter/material.dart';
import 'package:myapp/constant/constant.dart';

class CategoryList2 extends StatelessWidget {
  const CategoryList2({
    Key? key,
    required this.deviceHeight,
    required this.deviceWidth,
  }) : super(key: key);

  final double deviceHeight;
  final double deviceWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: deviceHeight * 0.05,
      width: deviceWidth,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: category2.length,
          itemBuilder: (context, index) {
            return Container(
                margin: EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Center(
                    child: Text(
                      category2[index],
                      style: TextStyle(color: Color(0xff6c0ee4), fontSize: 14),
                    ),
                  ),
                ));
          }),
    );
  }
}
