import 'package:app_ru_uffs/http/webclients/cardapios_webclient.dart';
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
        accentColor: Colors.blueAccent[700],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueAccent[700],
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: Cardapios(),
    );
  }
}