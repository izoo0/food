// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food/constants/reusableboxed.dart';
import 'package:food/models/products.dart';
import 'singleproductviews/discriptionView.dart';
import 'singleproductviews/singleProductActions.dart';

class singleProductScreen extends StatefulWidget {
  const singleProductScreen({Key? key}) : super(key: key);

  @override
  State<singleProductScreen> createState() => _singleProductScreenState();
}

class _singleProductScreenState extends State<singleProductScreen> {
  void _backtohomescreen(BuildContext context) =>
      Navigator.of(context).pushNamed('/');
  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)?.settings.arguments;
    final details = product_list.firstWhere((e) => e["pid"] == productId);
    return SafeArea(
      top: false,
      bottom: false,
      maintainBottomViewPadding: false,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(243, 246, 250, 1),
                ),
                alignment: Alignment.bottomCenter,
                child: addtocardarea(details, context),
              ),
              Container(
                height: MediaQuery.of(context).size.height * .8,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 520.0, left: 20),
                  child: discriptionsView(details),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * .5,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(243, 246, 250, 1),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          reusableboxed(
                            true,
                            false,
                            () {
                              _backtohomescreen(context);
                            },
                            FontAwesomeIcons.arrowLeft,
                            50,
                            50,
                          ),
                          reusableboxed(
                            true,
                            false,
                            () {},
                            Icons.favorite_outline,
                            50,
                            50,
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 50.0),
                              child: Text(
                                details['pname'],
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            // SizedBox(
                            //   height: 30,
                            // ),
                            Padding(
                              padding: const EdgeInsets.only(top: 50.0),
                              child: Image.asset(
                                details['image'],
                                height: 130,
                              ),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
