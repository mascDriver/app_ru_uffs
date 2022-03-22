import 'package:app_ru_uffs/components/centered_message.dart';
import 'package:app_ru_uffs/components/progress.dart';
import 'package:app_ru_uffs/http/webclients/cardapios_webclient.dart';
import 'package:app_ru_uffs/models/cardapio.dart';
import 'package:flutter/material.dart';

class CardapioItem extends StatelessWidget {
  final Cardapio cardapio;

  CardapioItem(this.cardapio);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cardápio'),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              leading: Icon(Icons.food_bank_outlined),
              title: Text(
                cardapio.salada.toString(),
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.food_bank_outlined),
              title: Text(
                cardapio.salada1.toString(),
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.food_bank_outlined),
              title: Text(
                cardapio.salada2.toString(),
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.food_bank_outlined),
              title: Text(
                cardapio.graos.toString(),
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.food_bank_outlined),
              title: Text(
                cardapio.graos1.toString(),
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.food_bank_outlined),
              title: Text(
                cardapio.graos2.toString(),
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.food_bank_outlined),
              title: Text(
                cardapio.acompanhamento.toString(),
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.food_bank_outlined),
              title: Text(
                cardapio.mistura.toString(),
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.food_bank_outlined),
              title: Text(
                cardapio.misturaVegana.toString(),
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.food_bank_outlined),
              title: Text(
                cardapio.sobremesa.toString(),
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
