import 'package:app_ru_uffs/screens/cardapios_list.dart';
import 'package:flutter/material.dart';

class Cardapios extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Restaurantes Universitários UFFS'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset('images/logo_uffs.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        _FeatureItem(
                          'Cerro Largo',
                          Icons.location_on_outlined,
                          onClick: () => _showCardapiosList(context, 'Cerro Largo'),
                        ),
                        _FeatureItem(
                          'Chapecó',
                          Icons.location_on_outlined,
                          onClick: () => _showCardapiosList(context, 'Chapecó'),
                        ),
                      _FeatureItem(
                          'Laranjeiras do Sul',
                          Icons.location_on_outlined,
                          onClick: () => _showCardapiosList(context, 'Laranjeiras do Sul'),
                        ),
                        _FeatureItem(
                          'Realeza',
                          Icons.location_on_outlined,
                          onClick: () => _showCardapiosList(context, 'Realeza'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _showCardapiosList(BuildContext context, String localizacao) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => CardapiosList(localizacao),
      ),
    );
  }

}

class _FeatureItem extends StatelessWidget {
  final String name;
  final IconData icon;
  final Function onClick;

  _FeatureItem(this.name, this.icon, {required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        color: Theme.of(context).primaryColor,
        child: InkWell(
          onTap: () => onClick(),
          child: Container(
            padding: EdgeInsets.all(8.0),
            height: 100,
            width: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Icon(
                  icon,
                  color: Colors.white,
                  size: 24.0,
                ),
                Text(
                  name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}