// ignore_for_file: prefer_const_constructors, camel_case_types, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'login/loginendview.dart';
import 'login/loginview.dart';
import 'reusable/loginSignupbutton.dart';
import 'reusable/logoallview.dart';
import 'reusable/reusableTextFiled.dart';

class userLogin extends StatefulWidget {
  const userLogin({Key? key}) : super(key: key);

  @override
  State<userLogin> createState() => _userLoginState();
}

class _userLoginState extends State<userLogin> {
  TextEditingController _userEmailController = TextEditingController();
  TextEditingController _userpasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                loginview(context),
                SizedBox(
                  height: 40,
                ),
                logoallview(),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * .635,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Column(
                    children: [
                      reusableTextField(
                        "Enter Email",
                        Icons.email_outlined,
                        false,
                        _userEmailController,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      reusableTextField(
                        "Enter Password",
                        Icons.key_outlined,
                        true,
                        _userpasswordController,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      signInsignOutbutton(
                        context,
                        true,
                        () {
                          FirebaseAuth.instance
                              .signInWithEmailAndPassword(
                                  email: _userEmailController.text,
                                  password: _userpasswordController.text)
                              .then((value) =>
                                  print('User loged in successfully'));
                          Navigator.of(context)
                              .pushNamed('home')
                              .onError((error, stackTrace) => null);
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      loginendView(context),
                      // SizedBox(
                      //   height: 20,
                      // ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: [
                      //     Text(
                      //       'or',
                      //       style:
                      //           TextStyle(color: Colors.black87, fontSize: 20),
                      //     )
                      //   ],
                      // )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
