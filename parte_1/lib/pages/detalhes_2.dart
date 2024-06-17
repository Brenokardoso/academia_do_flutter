import 'package:flutter/material.dart';

class DetailTwo extends StatelessWidget {
  const DetailTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detalhes Dois"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop("O valor é retornado"),
              child: const Text("Voltar"),
            )
          ],
        ),
      ),
    );
  }
}
