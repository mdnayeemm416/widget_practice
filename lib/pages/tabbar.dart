import 'package:flutter/material.dart';

import 'AnimatedText.dart';
import 'bottomNavBar.dart';

class TabBar_Widget extends StatefulWidget {
  const TabBar_Widget({super.key});

  @override
  State<TabBar_Widget> createState() => _AppBar_WidgetState();
}

class _AppBar_WidgetState extends State<TabBar_Widget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 1,
        animationDuration: Duration(seconds: 2),
        length: 4,
        child: Scaffold(
          appBar: AppBar(
              title: Text("FACEBOOK",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              bottom: TabBar(tabs: [
                Tab(
                  icon: Icon(Icons.chat),
                  text: "Chats",
                ),
                Tab(
                  icon: Icon(Icons.chat),
                  text: "Chats",
                ),
                Tab(
                  icon: Icon(Icons.chat),
                  text: "Chats",
                ),
                Tab(
                  icon: Icon(Icons.chat),
                  text: "Chats",
                ),
              ])),
          body: TabBarView(children: [
            AnimatedText(),
            BottomNavBar(),
            AnimatedText(),
            AnimatedText(),
          ]),
        ));
  }
}
