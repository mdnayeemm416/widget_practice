import 'package:flutter/material.dart';
import 'package:widget_practice/pages/AnimatedText.dart';
import 'package:widget_practice/pages/alert.dart';
import 'package:widget_practice/pages/bottomNavBar.dart';
import 'package:widget_practice/pages/bottom_sheet.dart';
import 'package:widget_practice/pages/dropDownList.dart';

import 'pages/dismissable.dart';
import 'pages/drawer.dart';
import 'pages/home.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.light, primaryColor: Colors.purple.shade200),
      title: "Practice Widget",
      home: Dropdownlist(),
    );
  }
}
