import 'package:flutter/material.dart';
import 'package:school_blog_project/screens/BlogPostDetails/BlogPostDetails.dart';
import 'package:school_blog_project/screens/HomePage/homepage.dart';
import 'package:school_blog_project/screens/ProfilePage/ProfilePage.dart';
import 'package:school_blog_project/screens/SavedPosts/SavedPosts.dart';
import 'package:school_blog_project/screens/SearchScreen/SearchScreen.dart';
import 'package:school_blog_project/screens/TabPage/TabPage.dart';

void main() {
  runApp(MaterialApp(
    home: TabPage(),
    theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Colors.white, elevation: 0.0),
        fontFamily: 'Manrope',
        scaffoldBackgroundColor: Colors.white),
  ));
}
