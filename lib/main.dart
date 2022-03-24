import 'package:app_ru_uffs/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(RuUffsApp());
}

class RuUffsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green[900],
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.green[900]
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.green[900],
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: Cardapios(),
    );
  }
}