import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:mobile/screens/home_screen.dart';
import 'package:mobile/screens/proceed_screen.dart';
import 'package:mobile/screens/signin.dart';
import 'package:get/get.dart';
import 'package:mobile/screens/signup.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => SignIn(),
      '/second': (cotext) => SignUp(),
      '/home': (context) => HomeScreen(),
      '/proceed': (context) => ProceedScreen()
    },
  ));
}
