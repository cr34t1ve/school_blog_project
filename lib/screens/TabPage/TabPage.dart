import 'package:flutter/material.dart';
import 'package:school_blog_project/screens/HomePage/homepage.dart';
import 'package:school_blog_project/screens/ProfilePage/ProfilePage.dart';
import 'package:school_blog_project/screens/SavedPosts/SavedPosts.dart';
import 'package:school_blog_project/screens/SearchScreen/SearchScreen.dart';

class TabPage extends StatefulWidget {
  const TabPage({Key? key}) : super(key: key);

  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  int _currentIndex = 0;

  final tabs = [
    HomePage(),
    SearchScreen(),
    SavedPosts(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        // unselectedIconTheme: IconThemeData(
        //   color: Colors.black
        // ),
        // selectedIconTheme: IconThemeData(
        //   color: Colors.pink,
        //   opacity: 0.5,
        //   size: 20.0
        // ),
        unselectedItemColor: Colors.black.withOpacity(0.4),
        selectedItemColor: Colors.black,
        unselectedLabelStyle: TextStyle(
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w600,
          fontSize: 10.0,
          // color: Colors.white
        ),
        selectedLabelStyle: TextStyle(
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w600,
          fontSize: 10.0,
          // color: Colors.white
        ),
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.save_alt), label: 'Saved'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_sharp), label: 'Profile')
        ],
      ),
      body: tabs[_currentIndex],
    );
  }
}
