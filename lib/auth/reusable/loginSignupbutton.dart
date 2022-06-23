import 'package:flutter/material.dart';

Container signInsignOutbutton(
        BuildContext context, bool isLogin, Function onTap) =>
    Container(
      width: MediaQuery.of(context).size.width,
      height: 60,
      child: ElevatedButton(
        onPressed: () => onTap(),
        child: Text(isLogin ? "Login" : 'SignUp'),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.blue;
              } else {
                return Colors.red;
              }
            }),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)))),
      ),
    );
