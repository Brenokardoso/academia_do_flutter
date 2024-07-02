import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ColorsWork extends StatelessWidget {
  const ColorsWork({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Colors Work"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 300,
              height: 300,
              color: Colors.blue.shade300,
            )
          ],
        ),
      ),
    );
  }
}
