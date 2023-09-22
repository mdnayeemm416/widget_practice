import 'package:flutter/material.dart';
import 'package:widget_practice/pages/AnimatedText.dart';
import 'package:widget_practice/pages/alert.dart';
import 'package:widget_practice/pages/dismissable.dart';
import 'package:widget_practice/pages/drawer.dart';

import 'bottom_sheet.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedIndex = 0;
  PageController pageController = PageController();
  // List widgets = [
  //   Text("Home"),
  //   Text("profile"),
  //   Text("Add"),
  //   Text("search"),
  //   Text("cart"),
  // ];
  void onTap(int index) {
    setState(() {
      selectedIndex = index;
    });
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: [
          Drawerwidget(),
          AnimatedText(),
          Dismissablewwidget(),
          Altert_widget(),
          BottomSheet_Widget(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_a_photo), label: "Photo"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: "cart"),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        onTap: onTap,
      ),
    );
  }
}
