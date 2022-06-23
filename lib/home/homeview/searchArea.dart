import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food/auth/reusable/reusableTextFiled.dart';
import 'package:food/constants/reusableboxed.dart';

Row searchArea(BuildContext context) {
  TextEditingController _searchTextController = TextEditingController();
  return Row(
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15),
        child: Container(
          width: MediaQuery.of(context).size.width * .78,
          height: 60,
          child: reusableTextField(
              "Search", Icons.search_outlined, false, _searchTextController),
        ),
      ),
      reusableboxed(false, false, () {}, FontAwesomeIcons.sliders, 60, 60),
    ],
  );
}
