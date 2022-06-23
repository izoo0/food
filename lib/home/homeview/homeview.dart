// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food/auth/reusable/reusableTextFiled.dart';
import 'package:food/constants/reusableboxed.dart';
import 'package:food/constants/reusableslider.dart';
import 'package:food/home/homeview/navprofile.dart';
import 'package:food/models/categories.dart';
import 'package:food/models/database.dart';
import 'package:food/models/products.dart';

import 'searchArea.dart';

class HomeViews extends StatefulWidget {
  const HomeViews({Key? key}) : super(key: key);

  @override
  State<HomeViews> createState() => _HomeViewsState();
}

class _HomeViewsState extends State<HomeViews> {
  final double padding = 15.0;
  final sidePadding = EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0);
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;
  bool isDrawerOpen = false;
  bool isActive = true;
  @override
  @override
  Widget build(BuildContext context) {
    final dynamic categories;

    return AnimatedContainer(
      decoration: BoxDecoration(
        boxShadow: [
          isDrawerOpen
              ? BoxShadow(
                  color: Color.fromARGB(74, 190, 190, 190),
                  offset: Offset(-20, 20),
                  blurRadius: 10,
                  blurStyle: BlurStyle.normal)
              : BoxShadow(
                  color: Colors.transparent,
                )
        ],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(isDrawerOpen ? 40 : 0),
          topLeft: Radius.circular(isDrawerOpen ? 40 : 0),
        ),
      ),
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor),
      duration: Duration(milliseconds: 250),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(243, 246, 250, 1),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(isDrawerOpen ? 40 : 0),
                topLeft: Radius.circular(isDrawerOpen ? 40 : 0),
              ),
            ),
            height: MediaQuery.of(context).size.height,
          ),
          Container(
            height: MediaQuery.of(context).size.height * .9,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
                topLeft: Radius.circular(isDrawerOpen ? 40 : 0),
              ),
            ),
            child: Column(
              children: [
                // addVerticalSpace(10),
                Padding(
                  padding: sidePadding,
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      reusableboxed(
                        true,
                        false,
                        isDrawerOpen
                            ? () {
                                setState(() {
                                  yOffset = 0;
                                  xOffset = 0;
                                  scaleFactor = 1;
                                  isDrawerOpen = false;
                                });
                              }
                            : () {
                                setState(() {
                                  yOffset = 150;
                                  xOffset = 300;
                                  scaleFactor = 0.7;

                                  isDrawerOpen = true;
                                });
                              },
                        isDrawerOpen
                            ? FontAwesomeIcons.xmark
                            : FontAwesomeIcons.bars,
                        50,
                        50,
                      ),
                      userprof(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 15, bottom: 5),
                                child: Text(
                                  'Fast and',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 27,
                                    wordSpacing: 1.5,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 15,
                                ),
                                child: Text(
                                  'Delicious Food',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 27,
                                      wordSpacing: 1.5),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      searchArea(context),
                      SizedBox(
                        height: 40,
                      ),
                      SizedBox(
                        height: 63,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: categoryNames.length,
                          itemBuilder: (context, index) => Row(
                            children: [
                              Padding(
                                  padding: const EdgeInsets.only(
                                    left: 15.0,
                                    right: 40,
                                  ),
                                  child: Column(
                                    children: [
                                      TextButton(
                                        onPressed: () => null,
                                        child: Text(
                                            categoryNames[index]['name'],
                                            style: TextStyle(
                                                fontSize: 25,
                                                color: Colors.black87)),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .08,
                                          height: 5,
                                          color: Colors.red)
                                    ],
                                  )),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * .35,
                        child: ListView.builder(
                          itemCount: product_list.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => Padding(
                            padding: EdgeInsets.only(
                              left: 20,
                            ),
                            child: reusablesliderdata(
                              slider_data: product_list[index],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: ClipRRect(

                // alignment: Alignment.center,
                // height: 30,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(isDrawerOpen ? 40 : 0),
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: BottomNavigationBar(
                      showSelectedLabels: false,
                      showUnselectedLabels: false,
                      elevation: 0,
                      type: BottomNavigationBarType.fixed,
                      selectedItemColor: Colors.red,
                      selectedFontSize: 13,
                      unselectedFontSize: 13,
                      iconSize: 30,
                      backgroundColor: Color.fromRGBO(243, 246, 250, 1),
                      items: [
                        BottomNavigationBarItem(
                          label: "Home",
                          icon: IconButton(
                            onPressed: () => null,
                            icon: Icon(Icons.home_outlined),
                          ),
                        ),
                        BottomNavigationBarItem(
                          label: "favourite",
                          icon: Icon(Icons.favorite_outline),
                        ),
                        BottomNavigationBarItem(
                          label: "notification",
                          icon: Icon(Icons.notifications_outlined),
                        ),
                        BottomNavigationBarItem(
                          label: "cat",
                          icon: Icon(Icons.shopping_bag_outlined),
                        ),
                      ]),
                )),
          )
        ],
      ),
    );
  }
}
