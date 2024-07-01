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
          child: ElevatedButton(
        onPressed: () =>
            Navigator.of(context).pushNamed("/buttonsAndTextRottation"),
        child: Text("Go to"),
      )
          //  Stack(
          //   children: [
          //     Container(width: 300, height: 300, color: Colors.red),
          //     Container(width: 250, height: 250, color: Colors.amberAccent),
          //     Container(width: 200, height: 200, color: Colors.green),
          //     Container(width: 150, height: 150, color: Colors.orange),
          //     Container(width: 100, height: 100, color: Colors.blue),
          //     Container(width: 50, height: 50, color: Colors.yellow),
          //     Container(width: 25, height: 25, color: Colors.pink),
          //   ],
          // ),
          ),
    );
  }
}
