import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomSnackBarPage extends StatelessWidget {
  const CustomSnackBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SnackBar Cutomizada"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Snackbar clicada com sucesso"),
                  ),
                );
              },
              child: const Text("Simple SnackBar"),
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    duration: const Duration(seconds: 2),
                    action: SnackBarAction(label: "X", onPressed: () {}),
                    content: const Text("Snackbar clicada com sucesso"),
                  ),
                );
              },
              child: const Text("Action SnackBar"),
            ),
          ],
        ),
      ),
    );
  }
}
