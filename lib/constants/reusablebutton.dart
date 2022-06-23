import 'package:flutter/material.dart';

Container reusableButton(
        BuildContext context, double width, Widget child, Function onTap) =>
    Container(
      width: MediaQuery.of(context).size.width * width,
      height: 60,
      child: ElevatedButton(
        onPressed: () => onTap(),
        child: child,
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.blue;
              } else {
                return Colors.red;
              }
            }),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)))),
      ),
    );
