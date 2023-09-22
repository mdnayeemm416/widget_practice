import 'package:flutter/material.dart';
import 'package:widget_practice/pages/alert.dart';

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
      title: "Practice Widget",
      home: Altert_widget(),
    );
  }
}
