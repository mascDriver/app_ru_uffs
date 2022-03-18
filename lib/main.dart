import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green[800],
      ),
      title: 'RU UFFS',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ru UFFS'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
//#00693e