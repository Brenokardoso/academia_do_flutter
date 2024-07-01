import 'package:flutter/material.dart';
import 'package:parte_2/pages/bottom_navigator_bar/pages/page1.dart';
import 'package:parte_2/pages/bottom_navigator_bar/pages/page2.dart';

class BottomNavigatorPage extends StatefulWidget {
  const BottomNavigatorPage({super.key});

  @override
  State<BottomNavigatorPage> createState() => _BottomNavigatorPageState();
}

class _BottomNavigatorPageState extends State<BottomNavigatorPage> {
  int indexStack = 0;
  int indexBottom = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Navigator Page'),
        backgroundColor: Colors.white24,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexBottom,
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
            activeIcon: Icon(
              Icons.home,
              color: Colors.yellow,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Work',
            icon: Icon(Icons.work),
            activeIcon: Icon(
              Icons.work,
              color: Colors.yellow,
            ),
          )
        ],
        onTap: (index) => setState(
          () {
            indexStack = index;
            indexBottom = index;
          },
        ),
      ),
      body: IndexedStack(
        index: indexStack,
        children: const [
          Page1(),
          Page2(),
        ],
      ),
    );
  }
}
