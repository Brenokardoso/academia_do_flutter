import 'package:flutter/material.dart';

enum PopUpMenuPages { container }

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Página Inicial"),
        actions: [
          PopupMenuButton<PopUpMenuPages>(
            onSelected: (PopUpMenuPages value) {
              switch (value) {
                case PopUpMenuPages.container:
                  Navigator.of(context).pushNamed('');
              }
            },
            itemBuilder: (BuildContext context) {
              return <PopupMenuItem<PopUpMenuPages>>[
                const PopupMenuItem(
                  value: PopUpMenuPages.container,
                  child: Text("Container"),
                )
              ];
            },
          )
        ],
      ),
      body: const Center(
        child: Column(
          children: [
            Text("Centro"),
          ],
        ),
      ),
    );
  }
}
