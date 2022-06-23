import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Container reusableboxed(
  bool isWhite,
  bool isRounded,
  Function onTap,
  IconData icon,
  double width,
  double height,
) =>
    Container(
      height: height,
      width: width,
      child: ElevatedButton(
        child: FaIcon(
          icon,
          color: isWhite ? Colors.black : Colors.white,
        ),
        style: ButtonStyle(
            alignment: Alignment.center,
            backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (isWhite) {
                return Colors.white;
              } else {
                return Colors.red;
              }
            }),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(isRounded ? 50 : 15)),
            )),
        onPressed: () {
          onTap();
        },
      ),
    );
