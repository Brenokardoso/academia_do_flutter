import 'package:flutter/material.dart';

class LayoutBuilderPage extends StatelessWidget {
  const LayoutBuilderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LayoutBuilder"),
      ),
      body: Center(
        child: LayoutBuilder(
          builder: (context, constraits) {
            double maxWidth = constraits.maxWidth;
            double maxHeigth = constraits.maxHeight;
            return Column(
              children: [
                Container(
                  width: maxWidth,
                  height: maxHeigth / 2,
                  color: Colors.orangeAccent,
                ),
                Container(
                  width: maxWidth,
                  height: maxHeigth / 2,
                  color: Colors.blue,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
