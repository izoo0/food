// ignore_for_file: prefer_const_constructors, camel_case_types, avoid_unnecessary_containers

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'register/registerendView.dart';
import 'register/registerview.dart';
import 'reusable/loginSignupbutton.dart';
import 'reusable/logoallview.dart';
import 'reusable/reusableTextFiled.dart';

class userRegister extends StatefulWidget {
  const userRegister({Key? key}) : super(key: key);

  @override
  State<userRegister> createState() => _userRegisterState();
}

class _userRegisterState extends State<userRegister> {
  TextEditingController _userEmailController = TextEditingController();
  TextEditingController _userpasswordController = TextEditingController();
  TextEditingController _usernameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                registerview(context),
                SizedBox(
                  height: 20,
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
                        "Name",
                        Icons.person_outline,
                        false,
                        _usernameController,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      reusableTextField(
                        "Enter Email",
                        Icons.email_outlined,
                        false,
                        _userEmailController,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      reusableTextField(
                        "Enter Password",
                        Icons.key_outlined,
                        true,
                        _userpasswordController,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      signInsignOutbutton(context, false, () {
                        FirebaseAuth.instance
                            .createUserWithEmailAndPassword(
                                email: _userEmailController.text,
                                password: _userpasswordController.text)
                            .then(
                              (value) => print("Created new account"),
                            );
                        Navigator.of(context).pushNamed("home").onError(
                              (error, stackTrace) =>
                                  print("Error ${error.toString()}"),
                            );
                      }),
                      SizedBox(
                        height: 20,
                      ),
                      registerendView(context),
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
