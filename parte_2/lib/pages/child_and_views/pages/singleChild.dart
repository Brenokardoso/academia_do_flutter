import 'package:flutter/material.dart';
import 'package:parte_2/home_page/home_page.dart';

class CustomSingleChild extends StatelessWidget {
  const CustomSingleChild({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SingleChild"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: listContainers,
          ),
        ),
      ),
    );
  }
}

List<Widget> listContainers = List.generate(
  50,
  (index) => Container(
    width: 75,
    height: 75,
    margin: const EdgeInsets.only(bottom: 20),
    decoration: BoxDecoration(
      gradient: LinearGradient(colors: [
        Color.fromARGB(index * 5, 30 + index, 135 + index, 220),
        Color.fromARGB(index * 10, 208 + index, 57 + index, 46),
        Color.fromARGB(index * 15, 224 + index, 207 + index, 51),
      ]),
    ),
  ),
);
