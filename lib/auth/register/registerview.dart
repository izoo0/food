// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

Container registerview(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height * 0.3,
    child: Column(
      children: [
        ClipRRect(
          child: Image.asset('assets/images/bg1.png'),
        ),
        SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed("/");
              },
              child: Text(
                'Login',
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Column(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("registration");
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.2,
                  height: 5.0,
                  color: Color.fromARGB(242, 238, 88, 77),
                )
              ],
            ),
          ],
        )
      ],
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(40),
        bottomRight: Radius.circular(40),
      ),
      color: Color.fromRGBO(243, 246, 253, 1),
    ),
  );
}
