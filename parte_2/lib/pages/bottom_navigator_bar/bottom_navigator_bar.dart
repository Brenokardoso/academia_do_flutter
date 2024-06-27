import 'package:flutter/material.dart';

class BottomNavigatorPage extends StatelessWidget {
  const BottomNavigatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Work',
            icon: Icon(Icons.work),
          )
        ],
        onTap: (value) => print(value),
      ),
      appBar: AppBar(
        title: const Text('Bottom Navigator Page'),
      ),
      body: const Column(),
    );
  }
}
