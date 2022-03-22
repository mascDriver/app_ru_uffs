
class Cardapio {
  final String dia;
  final String salada;
  final String salada1;
  final String salada2;
  final String graos;
  final String graos1;
  final String graos2;
  final String acompanhamento;
  final String mistura;
  final String misturaVegana;
  final String sobremesa;

  Cardapio(
    this.dia,
    this.salada,
    this.salada1,
    this.salada2,
    this.graos,
    this.graos1,
    this.graos2,
    this.acompanhamento,
    this.mistura,
    this.misturaVegana,
    this.sobremesa,
  );

  Cardapio.fromJson(Map<String, dynamic> json)
      : dia = json['dia'],
        salada = json['salada'],
        salada1 = json['salada1'],
        salada2 = json['salada2'],
        graos = json['graos'],
        graos1 = json['graos1'],
        graos2 = json['graos2'],
        acompanhamento = json['acompanhamento'],
        mistura = json['mistura'],
        misturaVegana = json['mistura_vegana'],
        sobremesa = json['sobremesa'];

}
