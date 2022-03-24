import 'package:app_ru_uffs/models/cardapio.dart';
import 'package:flutter/material.dart';

class CardapioItem extends StatelessWidget {
  final Cardapio cardapio;

  CardapioItem(this.cardapio);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cardápio de ${cardapio.dia}'),
      ),
      body: ListView(
        children: <Widget>[
          _CardapioItem(cardapio.salada.toString()),
          _CardapioItem(cardapio.salada1.toString()),
          _CardapioItem(cardapio.salada2.toString()),
          _CardapioItem(cardapio.graos1.toString()),
          _CardapioItem(cardapio.graos2.toString()),
          _CardapioItem(cardapio.acompanhamento.toString()),
          _CardapioItem(cardapio.mistura.toString()),
          _CardapioItem(cardapio.misturaVegana.toString()),
          _CardapioItem(cardapio.sobremesa.toString())
        ],
      ),
    );
  }
}

class _CardapioItem extends StatelessWidget {
  final String item;

  _CardapioItem(this.item);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.food_bank_outlined),
        title: Text(
          item,
          style: TextStyle(
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }
}