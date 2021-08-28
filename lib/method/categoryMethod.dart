import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';

Container Category(double deviceHeight, double deviceWidth) {
  return Container(
    height: deviceHeight * 0.05,
    width: deviceWidth,
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xffe2cbff)),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/correct.png',
                    height: 25,
                    width: 25,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Text(
                    'Cabbage and Lettuce (14)',
                    style: TextStyle(color: Color(0xff6c0ee4), fontSize: 14),
                  ),
                )
              ],
            ),
          );
        }),
  );
}
