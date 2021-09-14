// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_screen.dart';
import 'package:flutter_application_1/screens/login_screen.dart';
import 'package:flutter_application_1/utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),

      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),

      routes: {
        // Slash is by default Route
        "/": (context) => LoginScreen(),
        MyRoutes.loginRoute : (context) => LoginScreen(),
        MyRoutes.homeRoute : (context) => HomeScreen(),
      },
    );
  }
}