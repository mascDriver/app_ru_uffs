import 'dart:convert';

import 'package:app_ru_uffs/http/webclient.dart';
import 'package:app_ru_uffs/models/cardapio.dart';
import 'package:http/http.dart';

class CardapioWebClient {
  Future<List<Cardapio>> findAll([String? localizacao]) async {
    final Response response = await client
        .get(Uri.https(baseUrl, 'campus/${localizacao!.replaceAll('ó','o')}'))
        .timeout(Duration(seconds: 15));
    final List<dynamic> decodedJson = jsonDecode(utf8.decode(response.bodyBytes))['cardapios'][0]['cardapio'];
    return decodedJson.map((dynamic json) => Cardapio.fromJson(json)).toList();
  }
}