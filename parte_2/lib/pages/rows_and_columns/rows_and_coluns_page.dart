import 'package:flutter/material.dart';

class RowsAndColumns extends StatelessWidget {
  const RowsAndColumns({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Linhas e Colunas"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: listWidgetsColumns,
            ),
            Row(
              children: listWidgetsRows,
            )
          ],
        ),
      ),
    );
  }
}

List<Widget> listWidgetsColumns = List.generate(
  20,
  (index) => Container(
    width: 100,
    height: 100,
    margin: const EdgeInsets.only(bottom: 10),
    padding: const EdgeInsets.all(20),
    color: Color.fromRGBO(index * 6, index * 3, index * 7, 1),
    child: Text(
      "Container de numero $index nas colunas",
      textAlign: TextAlign.center,
      style: const TextStyle(fontSize: 10),
    ),
  ),
);

List<Widget> listWidgetsRows = List.generate(
  20,
  (index) => Flexible(
    child: Container(
      width: 100,
      height: 100,
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(20),
      color: Color.fromRGBO(index * 8, index * 4, index * 5, 1),
      child: Text(
        "Container de numero $index nas linhas",
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 10),
      ),
    ),
  ),
);
