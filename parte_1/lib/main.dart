import 'package:flutter/material.dart';
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
      routes: {
        "/" :(context) => const HomePage(),
        "/detalhes" : (detalhes)=> const DetailPage()
      },
    );
  }
}
