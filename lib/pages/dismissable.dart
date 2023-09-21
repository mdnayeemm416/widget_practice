import 'package:flutter/material.dart';

class Dismissablewwidget extends StatefulWidget {
  const Dismissablewwidget({super.key});

  @override
  State<Dismissablewwidget> createState() => _DismissablewwidgetState();
}

class _DismissablewwidgetState extends State<Dismissablewwidget> {
  List<String> Fruits = [
    "Mango",
    "Banana",
    "Litchu",
    "Litchu",
    "Litchu",
    "Litchu",
    "Litchu",
    "Litchu",
    "Litchu",
    "Litchu",
    "Litchu"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text("Dissmissable"))),
      body: ListView.builder(
          itemCount: Fruits.length,
          itemBuilder: (context, index) => Dismissible(
              onDismissed: (direction) {
                if (direction == DismissDirection.startToEnd) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    duration: Duration(seconds: 1),
                    content: Text("SAVED"),
                    backgroundColor: Colors.green,
                  ));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    duration: Duration(seconds: 1),
                    content: Text("Deleted"),
                    backgroundColor: Colors.red,
                  ));
                }
              },
              key: Key(Fruits[index]),
              background: Container(
                color: Colors.green,
              ),
              secondaryBackground: Container(
                color: Colors.red,
              ),
              child: Card(
                child: ListTile(
                  leading: const Icon(Icons.save_alt_rounded),
                  trailing: const Icon(Icons.delete_forever_sharp),
                  title: Center(child: Text(Fruits[index])),
                ),
              ))),
    );
  }
}
