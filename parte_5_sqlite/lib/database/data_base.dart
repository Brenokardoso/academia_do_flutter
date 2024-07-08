import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

class DataBaseSqlite {
  Future<void> openConnection() async {
    String databaseLocalPath = await getDatabasesPath();
    final String databaseFullPath = join(databaseLocalPath, "SQLITE_EXAMPLE");

    await openDatabase(
      databaseFullPath,
      version: 1,
      onCreate: (Database db, version) {
        print("On Create");
        final batch = db.batch();
        batch.execute(
          """
      CREATE TABLE teste(
      id integer primary key autoincrement,
      nome varchar(60),
      idade int,
      )
      """,
        );
      },
      onUpgrade: (db, oldVersion, newVersion) {
        print("On Updgrade");
      },
      onDowngrade: (db, oldVersion, newVersion) {
        print("On DownGrade");
      },
    );

    return;
  }
}
