// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

Row registerendView(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'Already have an Account ?',
        style: TextStyle(color: Colors.black54, fontSize: 20),
      ),
      TextButton(
          onPressed: () => Navigator.of(context).pushNamed('/'),
          child: Text(
            'Click Here',
            style: TextStyle(color: Colors.black87, fontSize: 20),
          ))
    ],
  );
}
