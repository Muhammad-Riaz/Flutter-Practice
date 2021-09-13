// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),

            Image.asset("assets/images/logo.png", height: 200, width: 200,),

            SizedBox(
              height: 30,
            ),

            Text("Login",
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
                    )
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

            ElevatedButton(
              onPressed: (){}, 
              child: Text("Login"),
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal:50),
              ),  
            ),

            SizedBox(
              height: 15,
            ),

            Text("or"),

            TextButton(
                onPressed: () {
                  print("Create Account");
                },
                child: const Text('Create new account'),
              ),

          ],
        ),
      ),
    );
  }
}

