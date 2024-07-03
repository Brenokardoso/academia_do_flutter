import 'package:flutter/material.dart';
import 'package:parte3/home_page.dart';
import 'package:parte3/setState/setState.dart';

void main() {
  runApp(
    const RootApp(),
  );
}

class RootApp extends StatelessWidget {
  const RootApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Gerência de Estado",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: HomePage(),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/setState':
            return MaterialPageRoute(
              settings: settings,
              builder: (setState) => const ImcSetState(),
            );
        }
        return null;
      },
    );
  }
}
