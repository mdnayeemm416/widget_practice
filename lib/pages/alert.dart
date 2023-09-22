import 'package:flutter/material.dart';

class Altert_widget extends StatefulWidget {
  const Altert_widget({super.key});

  @override
  State<Altert_widget> createState() => _Altert_widgetState();
}

class _Altert_widgetState extends State<Altert_widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Dialoge"),
      ),
      body: Container(
          child: Center(
        child: ElevatedButton(
          onPressed: () {
            _showDialoage(context);
          },
          child: Text("Show Alert"),
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
        ),
      )),
    );
  }
}

Future<void> _showDialoage(BuildContext context) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          elevation: 0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          title: Text('Alert'),
          content: SingleChildScrollView(
            child: ListBody(
              children: [Text("This is a Alert")],
            ),
          ),
          actions: [
            TextButton(onPressed: () {}, child: Text("Save")),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("cancel"))
          ],
        );
      });
}
