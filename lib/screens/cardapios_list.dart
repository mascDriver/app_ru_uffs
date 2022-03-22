
import 'package:app_ru_uffs/components/centered_message.dart';
import 'package:app_ru_uffs/components/progress.dart';
import 'package:app_ru_uffs/http/webclients/cardapios_webclient.dart';
import 'package:app_ru_uffs/models/cardapio.dart';
import 'package:app_ru_uffs/screens/cardapio_item.dart';
import 'package:flutter/material.dart';

class CardapiosList extends StatelessWidget {
  final CardapioWebClient _webClient = CardapioWebClient();
  final String localizacao;

  CardapiosList(this.localizacao);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Cardápio $localizacao'),
        ),
        body: FutureBuilder<List<Cardapio>>(
          future: _webClient.findAll(localizacao),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
                break;
              case ConnectionState.waiting:
                return Progress();
              case ConnectionState.active:
                break;
              case ConnectionState.done:
                if(snapshot.hasData){
                  final List<Cardapio>? cardapios = snapshot.data;
                  if (cardapios!.isNotEmpty) {
                    return ListView.builder(
                      itemBuilder: (context, index) {
                        final Cardapio cardapio = cardapios[index];
                        return Card(
                          child: ListTile(
                            leading: Icon(Icons.calendar_today_outlined),
                            onTap: () => _showCardapioList(context, cardapio),
                            title: Text(
                              cardapio.dia.toString(),
                              style: TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  cardapio.mistura.toString(),
                                  style: TextStyle(
                                    fontSize: 16.0,
                                  ),
                                ),
                                Text(
                                  cardapio.misturaVegana.toString(),
                                  style: TextStyle(
                                    fontSize: 16.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      itemCount: cardapios.length,
                    );
                  }
                }
                return CenteredMessage('Nenhum Cardápio encontrado',
                    icon: Icons.warning);
            }
            return CenteredMessage('Unknown error', icon: Icons.warning,);
          },
        ));
  }
  _showCardapioList(BuildContext context, Cardapio cardapio) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => CardapioItem(cardapio),
      ),
    );
  }
}