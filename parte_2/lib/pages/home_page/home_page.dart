import 'package:flutter/material.dart';

enum PopUpMenuPages { container, rowsAndColumns, mediaQuery }

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Página Inicial"),
        actions: [
          customPopUpMenuIButton(context),
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

Widget customPopUpMenuIButton(BuildContext context) {
  return PopupMenuButton<PopUpMenuPages>(
    icon: const Icon(Icons.construction_outlined),
    tooltip: 'Configurações',
    onSelected: (PopUpMenuPages value) {
      switch (value) {
        case PopUpMenuPages.container:
          Navigator.of(context).pushNamed('/container');
          break;
        case PopUpMenuPages.rowsAndColumns:
          Navigator.of(context).pushNamed('/rowsAndColumns');
          break;
        case PopUpMenuPages.mediaQuery:
          Navigator.of(context).pushNamed('/mediaQuery');
          break;
      }
    },
    itemBuilder: (BuildContext context) {
      return <PopupMenuItem<PopUpMenuPages>>[
        const PopupMenuItem(
          value: PopUpMenuPages.container,
          child: Text("Container"),
        ),
        const PopupMenuItem<PopUpMenuPages>(
          value: PopUpMenuPages.rowsAndColumns,
          child: Text("Rows And Columns"),
        ),
        const PopupMenuItem(
          value: PopUpMenuPages.mediaQuery,
          child: Text("Media Query"),
        )
      ];
    },
  );
}
