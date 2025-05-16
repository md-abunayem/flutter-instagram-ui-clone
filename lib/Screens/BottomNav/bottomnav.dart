import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/Screens/Heart/heartscreen.dart';
import 'package:instagram_ui_clone/Screens/Home/homescreen.dart';
import 'package:instagram_ui_clone/Screens/Post/postscreen.dart';
import 'package:instagram_ui_clone/Screens/Profile/profilescreen.dart';
import 'package:instagram_ui_clone/Screens/Search/searchscreen.dart';
import 'package:instagram_ui_clone/Widgets/uihelper.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currentIndex = 0;
  List<Widget> pages = [
    Homescreen(),
    SearchScreen(),
    PostScreen(),
    HeartScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.black,
        onTap: (index) {      //index is manage automatically when press on any tab
          currentIndex = index;     //assign the index value to the current index variable
          setState(() {});
        },
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.plus_app), label: "Post"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.heart), label: "Heart"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile"),
        ],
      ),
    );
  }
}
