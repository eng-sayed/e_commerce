import 'package:flutter/material.dart';

import 'log_in.dart';

class ResetPassword extends StatefulWidget {
  static const id = 'ResetPassword';

  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, LogIn.id);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    fillColor: Colors.grey[200],
                    filled: true,
                    suffixIcon: Icon(Icons.email),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    labelText: "Enter Email",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 39),
                child: FlatButton(
                    onPressed: () {},
                    child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.deepPurpleAccent,
                        ),
                        child: Center(child: Text("Reset Password",style: TextStyle(fontSize:15,fontWeight: FontWeight.bold,
                        color: Colors.white),)))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
