import 'package:flutter/material.dart';
import 'package:scratch_app/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Job finder",
      theme: ThemeData(
        primaryColor: Color(0XFF43B1B7),
          colorScheme: ColorScheme.fromSwatch().copyWith(
              secondary: Color(0XFFFED408)
          )
      ),
      home: const Home()
    );
  }
}

