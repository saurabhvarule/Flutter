import 'package:flutter/material.dart';
import 'login.dart';
import 'register.dart';
import 'forgetPassword.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyLogin(),
    routes: {
      'register': (context) => MyRegister(),
      'login': (context) => MyLogin(),
      'forgetPassword': (context) => MyForgetPassword(),
    },
  ));
}
