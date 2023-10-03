import 'package:flutter/material.dart';
import 'package:widget_practice/function/databaseFunction.dart';
import 'package:widget_practice/pages/petList.dart';

class Database_Input extends StatefulWidget {
  const Database_Input({super.key});

  @override
  State<Database_Input> createState() => _Database_InputState();
}

class _Database_InputState extends State<Database_Input> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Database Input"),
      ),
      body: Center(
        child: Container(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            ElevatedButton(
                onPressed: () {
                  create("pets", "animal", "mita", 14, "Cow");
                },
                child: Text("Create")),
            ElevatedButton(
                onPressed: () {
                  update("pets", "animal", "age", 10);
                },
                child: Text("update")),
            ElevatedButton(
                onPressed: () {
                  Delete("pets", "animal");
                },
                child: Text("delete")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PetList_widget()));
                },
                child: Text("retrive"))
          ]),
        ),
      ),
    );
  }
}
