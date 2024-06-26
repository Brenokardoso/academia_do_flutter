import 'dart:math';

import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  const StackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack'),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(width: 300, height: 300, color: Colors.red),
            Container(width: 200, height: 200, color: Colors.green),
            Container(width: 100, height: 100, color: Colors.blue),
            Container(width: 50, height: 50, color: Colors.yellow),
            Container(width: 25, height: 25, color: Colors.pink),
          ],
        ),
      ),
    );
  }
}
