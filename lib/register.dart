import 'package:flutter/material.dart';
import 'package:task2/log_in.dart';

class Register extends StatefulWidget {
  static const id = 'Register';

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              color: Colors.deepPurple,
              onPressed: () {
                Navigator.pushReplacementNamed(context, LogIn.id);
              },
              icon: Icon(Icons.arrow_back))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Center(
                  child: Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              )),
              SizedBox(
                height: 25,
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Enter Your Name",
                    fillColor: Colors.grey[200],
                    filled: true,
                    suffixIcon: Icon(Icons.person),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Enter Your Email",
                    fillColor: Colors.grey[200],
                    filled: true,
                    suffixIcon: Icon(Icons.email),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Enter Your Shop's name",
                    fillColor: Colors.grey[200],
                    filled: true,
                    suffixIcon: Icon(Icons.add),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Enter Your Shop's address",
                    fillColor: Colors.grey[200],
                    filled: true,
                    suffixIcon: Icon(Icons.maps_home_work),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
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
                          Icon(
                            Icons.check,
                            size: 15,
                            color: Colors.white,
                          ),
                          SizedBox(width: 8,),
                          Text(
                            "Sign Up",
                            style: TextStyle(fontSize: 18,color: Colors.white),
                          ),
                        ],
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}
