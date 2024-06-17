import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pagina Inicial"),
      ),
      body: Center(
        child: FilledButton(
          onPressed: () => Navigator.of(context).pushNamed(
            "/detalhes",
            arguments: const Text("Texto Da Home Page"),
          ),
          child: const Text('Ir para detalhes'),
        ),
      ),
    );
  }
}
