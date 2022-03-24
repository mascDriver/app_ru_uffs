import 'package:flutter/material.dart';

class Progress extends StatelessWidget{
  final String message;
  Progress({this.message = 'Carregando Cardápio'});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CircularProgressIndicator(),
          Padding(
            padding: const EdgeInsets.all(16.0),
          ),
          Text(message)
        ],
      ),
    );
  }
}