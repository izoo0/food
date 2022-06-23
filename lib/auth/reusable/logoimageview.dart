import 'package:flutter/material.dart';

ClipRRect logoView() {
  return ClipRRect(
    borderRadius: BorderRadius.circular(100),
    child: Container(height: 130, child: Image.asset('assets/images/logo.jpg')),
  );
}
