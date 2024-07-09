import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

class DataBaseSqlite {
  Future<Database> openConnection() async {
    String databaseLocalPath = await getDatabasesPath();
    final String databaseFullPath = join(databaseLocalPath, "bancodedados.db");

    return await openDatabase(
      databaseFullPath,
      version: 2,
      onConfigure: (db) async {
        print('OnConfigure');

        await db.execute("PRAGMA foreing_keys==ON");
      },
      onCreate: (Database db, int version) async {
        print("OnCreate");
        await db.execute(
          "CREATE TABLE teste(id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT,age INTEGER)",
        );

        await db.transaction(
          (action) async {
            await action.rawInsert("INSERT INTO teste VALUES(0,'Breno',22)");
            await action.rawInsert("INSERT INTO teste VALUES(1,'Lucas',23)");
          },
        );

        Batch batch = db.batch();
        batch.insert("teste", {"name": 'Amanda', 'age': 18});
        await batch.commit();
      },
      onUpgrade: (Database db, int oldVersion, int newVersion) {
        print("OnUpgrade");
        Batch batch = db.batch();

        if (oldVersion == 1) {
          batch.execute(
            "CREATE TABLE Produtos(id INTEGER PRIMARY KEY,name TEXT,value INTEGER)",
          );
          batch.commit();
        }

        if (oldVersion == 2) {
          batch.execute(
              "CREATE TABLE Categoria(id INTEGER PRIMARY KEY AUTOINCREMENT,nome VARCHAR(80))");
        }
      },
      onDowngrade: (Database db, int oldVersion, int newVersion) {
        print("OnDownGrade");
        Batch batch = db.batch();

        if (oldVersion == 3) {
          batch.execute("DROP TABLE Categoria");
          batch.commit();
        }
      },
    );
  }
}
