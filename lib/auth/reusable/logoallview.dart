import 'package:flutter/material.dart';

import 'logoimageview.dart';

Row logoallview() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Column(
        children: [
          Text(
            'Delicacy',
            style: TextStyle(
                color: Colors.red[400],
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
          Text(
            'Food',
            style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ],
      ),
      logoView(),
      Column(
        children: [
          Text(
            'Restaurent',
            style: TextStyle(
                color: Colors.red[400],
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
          Text(
            'Delivery',
            style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ],
      ),
    ],
  );
}
