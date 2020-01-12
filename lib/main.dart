import 'package:flutter/material.dart';
import 'package:bmi_calc/App.dart';
import 'ResultsScreen.dart';
import 'package:flutter/services.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.white),
        ),
      ),
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: ResultScreen(),
        ),
      ),
    );
  }
}
