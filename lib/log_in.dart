import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:task2/register.dart';
import 'package:task2/reset_password.dart';

class LogIn extends StatefulWidget {
  static const id = 'LogIn';

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
              // child: Container(//image ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Login",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Enter Your Email",
                filled: true,
                fillColor: Colors.grey[200],
                suffixIcon: Icon(Icons.email),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Enter Your Password",
                filled: true,
                fillColor: Colors.grey[200],
                suffixIcon: Icon(Icons.lock),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            FlatButton(
                onPressed: () {},
                child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.deepPurple,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Login",
                          style: TextStyle(fontSize: 30),
                        ),
                      ],
                    ))),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, ResetPassword.id);
              },
              child: Text(
                "Forget Paasword",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurpleAccent),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account ?",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, Register.id);
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.deepPurpleAccent),
                    ))
              ],
            ),
          ],
        ),
      )),
    );
  }
}
