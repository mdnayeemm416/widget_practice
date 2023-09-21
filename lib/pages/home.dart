import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
        appBar:
            AppBar(title: Center(child: Text("List & Gride")), elevation: 8),
        backgroundColor: Colors.white,
        body: Container(
          // child: ListView.builder(
          //     itemCount: Fruits.length,
          //     itemBuilder: (context, index) {
          //       return Card(
          //         child: ListTile(title: Text(Fruits[index])),
          //       );
          //     })
          child: GridView.builder(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemCount: Fruits.length,
              itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      final snackbar = SnackBar(
                        action: SnackBarAction(
                            label: "Undo",
                            textColor: Colors.red,
                            onPressed: () {}),
                        margin:
                            EdgeInsets.only(bottom: 50, left: 20, right: 20),
                        content: Text(Fruits[index]),
                        duration: Duration(seconds: 3),
                        behavior: SnackBarBehavior.floating,
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackbar);
                    },
                    child: Card(
                      child: Center(child: Text(Fruits[index])),
                      color: Colors.purple,
                    ),
                  )),
        ));
  }
}

//  Card(
//             child: ListTile(title: Text("flower")),
//             color: Colors.purple,
//           ),
//           Card(
//             child: ListTile(title: Text("flower")),
//           ),
//           Card(
//             child: ListTile(title: Text("flower")),
//           )
