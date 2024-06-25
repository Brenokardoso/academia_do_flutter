import 'dart:convert';

import 'package:flutter/foundation.dart';

class Cidade {
  @required
  Cidade({
    required this.cidade,
    required this.estado,
  });

  String cidade;
  String estado;

  Cidade city = Cidade(cidade: 'sla', estado: "sla 2");

  Map<String, dynamic> toMap() {
    return {"cidade": cidade, "estado": estado};
  }

  factory Cidade.fromMap(Map<String, dynamic> map) {
    return Cidade(cidade: map['cidades'], estado: map['estado']);
  }

  factory Cidade.fromJson(String source) => Cidade.fromMap(jsonDecode(source));

  String toJson() => jsonEncode(toMap());
}
