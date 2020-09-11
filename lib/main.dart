import 'package:flutter/material.dart';
import 'package:movie_app/screen/home/screen/home_screen.dart';

/// @author : Mehrdad HosseinNejad
/// Email : hosseinnejad74@gmail.com
/// Project : Movie-App
/// Date : 9/10/2020

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movie App',
      theme: ThemeData(
        bottomSheetTheme:
            BottomSheetThemeData(backgroundColor: Colors.transparent),
        scaffoldBackgroundColor: Color(0xffFCFCFC),
        primaryColorLight: Color(0xffFCFCFC),
      ),
      home: HomeScreen(),
    );
  }
}
