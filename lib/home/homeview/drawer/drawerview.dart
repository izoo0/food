// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'draweitems.dart';

class DrawerViews extends StatefulWidget {
  const DrawerViews({Key? key}) : super(key: key);

  @override
  State<DrawerViews> createState() => _DrawerViewsState();
}

class _DrawerViewsState extends State<DrawerViews> {
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final sidePadding = EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0);
    return Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: drawerItem.map((elements) {
                return Padding(
                  padding: sidePadding,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Icon(elements['icon']),
                      ),
                      Text(
                        elements['name'],
                        // style: themeData.textTheme.headline5,
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
            Padding(
              padding: sidePadding,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Icon(Icons.logout_outlined),
                  ),
                  TextButton(
                    onPressed: () => FirebaseAuth.instance
                        .signOut()
                        .then((value) => Navigator.of(context).pushNamed('/')),
                    child: Text('Logout'),
                    // style: themeData.textTheme.headline5,
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
