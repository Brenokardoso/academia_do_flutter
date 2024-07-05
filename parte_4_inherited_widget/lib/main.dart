import 'package:flutter/material.dart';
import 'package:parte_4_inherited_widget/home/home_page.dart';
import 'package:parte_4_inherited_widget/model/use_model.dart';
import 'package:parte_4_inherited_widget/splash/splash_page.dart';

void main() {
  runApp(const RootApp());
}

class RootApp extends StatelessWidget {
  const RootApp({super.key});

  @override
  Widget build(BuildContext context) {
    return UserModel(
      name: "Breno Cardoso",
      bithDate: "06/08",
      imageAvatar:
          "https://i.redd.it/4kbg7ionk63a1.jpg",
      inheritedChild: MaterialApp(
        title: "InheritedWidgets",
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        themeMode: ThemeMode.dark,
        initialRoute: "/",
        routes: {
          "/": (context) => const SplashPage(),
          "/home": (context) => const HomePage()
        },
      ),
    );
  }
}
