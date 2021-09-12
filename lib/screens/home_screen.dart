// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),

        drawer: Drawer(),
        
        body: Center(
          child: Container(
            child: Text("Welcome Screen"),
            
          ),
        ),
      ),
    );
  }
}