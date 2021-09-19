import 'package:flutter/material.dart';
import 'package:school_blog_project/screens/HomePage/homepage.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Colors.white, elevation: 0.0),
        fontFamily: 'Manrope',
        scaffoldBackgroundColor: Colors.white),
  ));
}

