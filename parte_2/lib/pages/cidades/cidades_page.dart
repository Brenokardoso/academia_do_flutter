import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:parte_2/pages/cidades/entities/cidades_entitie.dart';

class CidadesPage extends StatefulWidget {
  const CidadesPage({super.key});

  @override
  State<CidadesPage> createState() => _CidadesPageState();
}

class _CidadesPageState extends State<CidadesPage> {
  List<Cidade> cidades = <Cidade>[];

  @override
  void initState() {
    super.initState();
    captureJson();
  }

  Future<void> captureJson() async {
    final cidadeJson = await rootBundle.loadString("assets/json/cidade.json");
    setState(() {
      List cidadeList = json.decode(cidadeJson);
      cidades = cidadeList.map((city) => Cidade.fromMap(city)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    List<int> listInt = <int>[];
    var intList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

    listInt = intList.map((numero) => numero).toList();

    // print('O valor de listInt : $listInt');

    cidades.add(Cidade(cidade: "Cidade inexistente", estado: "Não existe"));
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cidades Page"),
      ),
      body: ListView.separated(
        itemCount: cidades.length,
        separatorBuilder: (context, index) => const SizedBox(height: 10),
        itemBuilder: (context, index) {
          var indexCity = cidades[index];
          return ListTile(
            title: Text(indexCity.cidade),
            subtitle: Text(indexCity.estado),
            onTap: () {},
          );
        },
      ),
    );
  }
}
