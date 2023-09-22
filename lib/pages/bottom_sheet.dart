import 'package:flutter/material.dart';

class BottomSheet_Widget extends StatelessWidget {
  const BottomSheet_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Center(
          child: Text("Bottom Sheet"),
        ),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                  backgroundColor: Theme.of(context).primaryColor,
                  isDismissible: false,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  context: context,
                  builder: (context) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(
                          title: Text("orange"),
                        ),
                        ListTile(
                          title: Text("orange"),
                        ),
                        ListTile(
                          title: Text("orange"),
                        ),
                        ListTile(
                          title: Text("orange"),
                        ),
                        ListTile(
                          title: Text("orange"),
                        ),
                      ],
                    );
                  });
            },
            child: Text("Bottom Sheet")),
      ),
    );
  }
}
