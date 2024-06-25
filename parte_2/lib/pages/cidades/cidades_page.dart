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
  @override
  void initState() {
    super.initState();
    captureJson();
  }

  Future<void> captureJson() async {
    final cidadeJson = await rootBundle.loadString("assets/json/cidade.json");
    setState(() {
      cidades = jsonDecode(cidadeJson);
    });
  }

  List<Cidade> cidades = <Cidade>[];

  @override
  Widget build(BuildContext context) {
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
          );
        },
      ),
    );
  }
}
