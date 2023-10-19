import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:qrbeam/config/strings.dart';

height(double height) => SizedBox(height: height);
width(double width) => SizedBox(width: width);

Color white = Colors.white;

Box? box;

ThemeData appTheme() {
  return ThemeData(
      primarySwatch: Colors.deepPurple,
      secondaryHeaderColor: Colors.deepPurpleAccent,
      
      navigationBarTheme:
          NavigationBarThemeData(indicatorColor: Colors.deepPurple.shade100),
      appBarTheme: AppBarTheme(
        foregroundColor: Colors.black,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: const TextStyle(
          fontFamily: 'Ubuntu',
            fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
        centerTitle: true,
      
        
      ),
       useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      fontFamily: fontName);
}
