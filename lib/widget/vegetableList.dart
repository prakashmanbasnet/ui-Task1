import 'package:flutter/material.dart';
import 'package:myapp/constant/constant.dart';

class VegetableList extends StatelessWidget {
  const VegetableList({
    Key? key,
    required this.deviceHeight,
    required this.deviceWidth,
  }) : super(key: key);

  final double deviceHeight;
  final double deviceWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: deviceHeight * 0.47,
      width: deviceWidth,
      child: ListView.builder(
          itemCount: vegetableList.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(bottom: 15),
              height: deviceHeight * 0.16,
              width: deviceWidth,
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Image.asset(
                      vegetableList[index]['image'],
                    ),
                  ),
                  SizedBox(
                    width: deviceWidth * 0.03,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            vegetableList[index]['name'],
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          )),
                      SizedBox(
                        height: deviceHeight * 0.01,
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                              text: vegetableList[index]['price'],
                              style: TextStyle(
                                  color: Color(0xff2d0c57),
                                  fontWeight: FontWeight.w700),
                            ),
                            TextSpan(
                                text: vegetableList[index]['currency'],
                                style: TextStyle(color: Color(0xff9586a8)))
                          ]),
                        ),
                      ),
                      SizedBox(
                        height: deviceHeight * 0.04,
                      ),
                      Row(
                        children: [
                          Container(
                            height: deviceHeight * 0.05,
                            width: deviceWidth * 0.20,
                            decoration: BoxDecoration(
                                color: Color(0xffffffff),
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Color(0xff9586a8))),
                            child: Center(
                              child: Image.asset(
                                'assets/love.png',
                              ),
                            ),
                          ),
                          SizedBox(
                            width: deviceWidth * 0.03,
                          ),
                          Container(
                            height: deviceHeight * 0.05,
                            width: deviceWidth * 0.20,
                            decoration: BoxDecoration(
                              color: Color(0xff0bce83),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Image.asset(
                                'assets/cart-outline.png',
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            );
          }),
    );
  }
}
