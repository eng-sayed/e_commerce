import 'package:flutter/material.dart';
import 'package:task2/log_in.dart';
import 'log_in.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: LogIn(),
        routes: {
          LogIn.id: (context) => LogIn(),
        });
  }
}
