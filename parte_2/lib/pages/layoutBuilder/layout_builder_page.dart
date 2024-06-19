import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
            double max_width = constraits.maxWidth;
            double max_heigth = constraits.maxHeight;
            return Column(
              children: [
                Container(
                  width: max_width,
                  height: max_heigth / 2,
                  color: Colors.orangeAccent,
                ),
                Container(
                  width: max_width,
                  height: max_heigth / 2,
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
