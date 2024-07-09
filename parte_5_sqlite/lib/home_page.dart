import 'package:flutter/material.dart';
import 'package:parte_5_sqlite/database/data_base.dart';
import 'package:sqflite/sqflite.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    _openDatabase();
  }

  Future<Database> _openDatabase() async {
    Database database = await DataBaseSqlite().openConnection();
    // await database.insert('teste', {"name": "Edilson", "age": 55});
    // await database.delete('teste', where: 'name = ?', whereArgs: ["Raysa"]);
    // await database.update(
    //   "teste",
    //   {"name": "Batman", "age": 40},
    //   where: "name = ?",
    //   whereArgs: ["Conceição"],
    // );

    // var databasequery = await database.query('teste');
    // database.rawInsert(
    //     "INSERT INTO teste(name,age) VALUES('Roberto Caros', 32)", []);

    // database.delete('teste', where: "name = ?", whereArgs: ["Edilson"]);

    // print(
    //   databasequery.map(
    //     (element) => print("${element.keys}:${element.values}"),
    //   ),
    // );

    // database.delete("teste", where: "age = ?", whereArgs: [40]);

    database.rawUpdate(
      'UPDATE teste SET name = ? where age = ?',["Lionel Messi",78],
    );

    return database;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: const Center(),
    );
  }
}
