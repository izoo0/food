import 'package:flutter/material.dart';

Container userprof() {
  return Container(
    height: 50,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      border: Border.all(),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.black54,
          offset: Offset.zero,
          blurRadius: 5,
          blurStyle: BlurStyle.normal,
        )
      ],
    ),
    width: 50,
    child: ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Image.asset(
        'assets/images/prof.jpg',
        fit: BoxFit.cover,
      ),
    ),
  );
}
