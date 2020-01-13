import 'package:flutter/material.dart';
import "ResultsScreen.dart";
import "App.dart";

class Routes {
  static const String homePage = "/";
  static const String resultPage = "/result";
  static final routes = <String, WidgetBuilder>{
    homePage: (context) => App(),
    resultPage: (context) => ResultScreen(),
  };
}
