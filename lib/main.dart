import 'package:flutter/material.dart';
import 'package:food_app_ui/screens/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Color(0xFFFB9300),
          accentColor: Color(0xFFFFFAF2),
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          )),
      home: MainScreen(),
    );
  }
}
