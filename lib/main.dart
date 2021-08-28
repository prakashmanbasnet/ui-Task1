import 'package:flutter/material.dart';
import 'package:myapp/widget/categoryList1.dart';
import 'package:myapp/widget/categoryList2.dart';
import 'package:myapp/widget/vegetableList.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Myapp()));
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Color(0xfff6f5f5),
          height: deviceHeight,
          width: deviceWidth,
          padding: EdgeInsets.only(left: deviceWidth * 0.05),
          child: Column(
            children: [
              Container(
                height: deviceHeight * 0.20,
                width: deviceWidth,
                child: Stack(
                  children: [
                    Positioned(
                        top: deviceHeight * 0.02,
                        left: 0,
                        child: Image.asset(
                          'assets/back-arrow.png',
                          height: 20,
                          width: 20,
                          color: Colors.black,
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Positioned(
                      top: deviceHeight * 0.06,
                      left: 0,
                      child: Text(
                        'Vegetable',
                        style: TextStyle(
                            fontSize: 30,
                            color: Color(0xff2d0c57),
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Positioned(
                      bottom: 15,
                      right: 0,
                      child: Image.asset(
                        'assets/tree.png',
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 10,
                      child: Container(
                        height: deviceHeight * 0.070,
                        width: deviceWidth * 0.93,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0xffffffff),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 10),
                              child: Icon(
                                Icons.search,
                                color: Color(0xff000000),
                                size: 30,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: deviceWidth * 0.70,
                              child: TextField(
                                textAlignVertical: TextAlignVertical.center,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Search',
                                  hintStyle: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff9586A8),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    height: deviceHeight * 0.05,
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffe2cbff),
                    ),
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
                            style: TextStyle(
                                color: Color(0xff6c0ee4), fontSize: 14),
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: CategoryList1(
                      deviceHeight: deviceHeight,
                      deviceWidth: deviceWidth,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              CategoryList2(
                deviceHeight: deviceHeight,
                deviceWidth: deviceWidth,
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(height: 20),
              VegetableList(
                  deviceHeight: deviceHeight, deviceWidth: deviceWidth),
              Expanded(
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        'assets/home.png',
                        color: Color(0xff9586a8),
                      ),
                      Image.asset(
                        'assets/cart-outline.png',
                        color: Color(0xff9586a8),
                      ),
                      Image.asset(
                        'assets/profile.png',
                        color: Color(0xff9586a8),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
