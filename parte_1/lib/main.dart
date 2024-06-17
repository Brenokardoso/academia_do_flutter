import 'package:flutter/material.dart';
import 'package:parte_1/core/navigator_observer.dart';
import 'package:parte_1/pages/detalhes.dart';
import 'package:parte_1/pages/home_page.dart';

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
      title: "Flutter Navegações",
      navigatorObservers: [CustomNavigatorObserver()],
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(
              builder: (_) => const HomePage(),
              settings: settings,
            );
          case '/detalhes':
            return MaterialPageRoute(
              builder: (detalhes) => const DetailPage(),
              settings: settings,
            );
        }
        return null;
      },
    );
  }
}
