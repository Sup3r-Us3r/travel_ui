import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Travel UI',
    home: HomeScreen(),
    theme: ThemeData(
      primaryColor: Color(0xFF3EBACE),
      accentColor: Color(0xFFD8ECF1),
      scaffoldBackgroundColor: Color(0xFFF3F5F7),
    ),
  ));
}
