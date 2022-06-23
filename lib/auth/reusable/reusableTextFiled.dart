// ignore_for_file: file_names, prefer_const_constructors
import 'package:flutter/material.dart';

TextField reusableTextField(String text, IconData icon, bool ispasswordType,
    TextEditingController controller) {
  return TextField(
      controller: controller,
      obscureText: ispasswordType,
      enableSuggestions: !ispasswordType,
      autocorrect: !ispasswordType,
      cursorColor: Colors.black54,
      style: TextStyle(),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(25),
        prefixIcon: Icon(icon, color: Colors.black54),
        labelText: text,
        labelStyle: TextStyle(
          color: Colors.black54,
        ),
        filled: true,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        fillColor: Color.fromRGBO(243, 246, 250, 1),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
      ),
      keyboardType: ispasswordType
          ? TextInputType.visiblePassword
          : TextInputType.emailAddress);
}
