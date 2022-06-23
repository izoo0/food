import 'package:flutter/material.dart';
import 'package:food/constants/reusablebutton.dart';

Padding addtocardarea(Map<dynamic, dynamic> details, BuildContext context) {
  return Padding(
    padding: EdgeInsets.only(bottom: 30),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          details['price'],
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w800,
            color: Color.fromARGB(221, 56, 56, 56),
          ),
        ),
        reusableButton(
            context,
            .5,
            Text(
              'add to Cart',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
            () {})
      ],
    ),
  );
}
