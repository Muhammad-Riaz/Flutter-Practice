// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_application_1/screens/home_screen.dart';
import 'package:flutter_application_1/utils/routes.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  String name="";
  bool changeButton=false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
        
              Image.asset("assets/images/logo.png", height: 150, width: 200,),
        
              SizedBox(
                height: 30,
              ),
        
              Text("Welcome $name",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Colors.teal,
        
                ),
              ),
        
              SizedBox(
                height: 30,
              ),
        
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 30),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        label: Text("Email"),
                        hintText: "Enter your email"
                      ),
                      onChanged: (value){
                        name = value;
                        setState(() {
                        });
                      },
                    ),
        
                    TextFormField(
                      decoration: InputDecoration(
                        label: Text("Password"),
                        hintText: "Enter your password",
                        
                      ), 
                      obscureText: true,
                    ),
                  ],
                ),
              ),
        
              SizedBox(
                height: 30,
              ),

              InkWell(
                onTap: () async {
                  setState(() {
                    changeButton = true;
                  });
                  
                  await Future.delayed (Duration(milliseconds: 500));
                  Navigator.pushNamed(context, MyRoutes.homeRoute);
                },

                child: AnimatedContainer(
                  duration: Duration(milliseconds: 500),
                  width: changeButton ? 50 : 150,
                  height: 50,
                  
                  child: changeButton ? 
                    Icon(
                      Icons.done, 
                      color: Colors.white,
                    ) :  
                    
                    Text("Login", 
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    )
                  ),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: changeButton ?  BorderRadius.circular(50) : BorderRadius.circular(8.0),
                    color: Colors.teal,
                  ),
                ),
              ),
        
              // ElevatedButton(
              //   onPressed: (){
              //     Navigator.pushNamed(context, MyRoutes.homeRoute);
              //   }, 
              //   child: Text("Login"),
              //   style: TextButton.styleFrom(
              //     padding: EdgeInsets.symmetric(vertical: 10, horizontal:50),
              //   ),  
              // ),
        
              SizedBox(
                height: 15,
              ),
        
              Text("or"),
        
              TextButton(
                  onPressed: () {
                    
                  },
                  child: const Text('Create new account'),
                ),
        
            ],
          ),
        ),
      ),
    );
  }
}

