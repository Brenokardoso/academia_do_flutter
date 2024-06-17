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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FilledButton(
              onPressed: () => Navigator.of(context).pushNamed(
                "/detalhes",
                arguments: const Text("Texto Da Home Page"),
              ),
              child: const Text('Ir para detalhes'),
            ),
            FilledButton(
              onPressed: () async {
                print("Antes da navegação");
                var params = await Navigator.of(context).pushNamed(
                  "/detalhes2",
                );
                print("Depois da navegação : $params");
              },
              child: const Text('Ir para detalhes dois'),
            ),
          ],
        ),
      ),
    );
  }
}
