import 'package:flutter/material.dart';
import 'package:parte_2/pages/container/container_page.dart';
import 'package:parte_2/pages/home_page/home_page.dart';
import 'package:parte_2/pages/rows_and_columns/rows_and_coluns_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      // home: Container(),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(
              builder: (_) => const HomePage(),
              settings: settings,
            );
          case '/container':
            return MaterialPageRoute(
              builder: (container) => const ContainerPage(),
              settings: settings,
            );
          case '/rowsAndColumns':
            return MaterialPageRoute(
              builder: (rowsAndColumns) => const RowsAndColumns(),
              settings: settings,
            );
        }
        return null;
      },
    );
  }
}
