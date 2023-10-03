import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:widget_practice/pages/database.dart';
import 'package:widget_practice/pages/form.dart';
import 'package:widget_practice/pages/login_form.dart';
import 'pages/imagePicker.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<void> main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
      home: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Database_Input();
            } else {
              return Login_form();
            }
          }),
    );
  }
}


// adb tcpip 5555
// adb connect 192.168.0.103:5555
           
                        