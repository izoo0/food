// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food/home/homeview/drawer/drawerview.dart';
import 'package:food/home/homeview/homeview.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // bottomNavigationBar: BottomNavigationBar(
        //     elevation: 0,
        //     type: BottomNavigationBarType.fixed,
        //     selectedItemColor: Colors.blue[700],
        //     selectedFontSize: 13,
        //     unselectedFontSize: 13,
        //     iconSize: 30,
        //     backgroundColor: Color.fromRGBO(243, 246, 250, 1),
        //     items: [
        //       BottomNavigationBarItem(
        //         label: "Home",
        //         icon: Icon(Icons.home),
        //       ),
        //       BottomNavigationBarItem(
        //         label: "Search",
        //         icon: Icon(Icons.search),
        //       ),
        //       BottomNavigationBarItem(
        //         label: "Categories",
        //         icon: Icon(Icons.grid_view),
        //       ),
        //       BottomNavigationBarItem(
        //         label: "My Account",
        //         icon: Icon(Icons.account_circle_outlined),
        //       ),
        //     ]),
        body: Stack(
          children: [
            DrawerViews(),
            HomeViews(),
          ],
        ),
      ),
    );
  }
}
