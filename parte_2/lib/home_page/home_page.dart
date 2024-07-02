import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

enum PopUpMenuPages {
  container,
  rowsAndColumns,
  mediaQuery,
  layoutBuilder,
  buttonsAndTextRottation,
  childAndListView,
  dialogs,
  snackBar,
  forms,
  cidades,
  stack,
  bottomNavigator,
  circularAvatar,
  colors,
  banner,
}

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
        case PopUpMenuPages.layoutBuilder:
          Navigator.of(context).pushNamed("/layoutBuilder");
          break;
        case PopUpMenuPages.buttonsAndTextRottation:
          Navigator.of(context).pushNamed('/buttonsAndTextRottation');
          break;
        case PopUpMenuPages.childAndListView:
          Navigator.of(context).pushNamed('/childAndViews');
          break;
        case PopUpMenuPages.dialogs:
          Navigator.of(context).pushNamed('/dialogs');
          break;
        case PopUpMenuPages.snackBar:
          Navigator.of(context).pushNamed('/snackBar');
          break;
        case PopUpMenuPages.forms:
          Navigator.of(context).pushNamed('/forms');
          break;
        case PopUpMenuPages.cidades:
          Navigator.of(context).pushNamed("/cidades");
        case PopUpMenuPages.stack:
          Navigator.of(context).pushNamed("/stack");
        case PopUpMenuPages.bottomNavigator:
          Navigator.of(context).pushNamed("/bottomNavigate");
        case PopUpMenuPages.circularAvatar:
          Navigator.of(context).pushNamed("/circularAvatar");
        case PopUpMenuPages.colors:
          Navigator.of(context).pushNamed("/colorsWork");
             case PopUpMenuPages.banner:
          Navigator.of(context).pushNamed("/banner");
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
        ),
        const PopupMenuItem(
          value: PopUpMenuPages.layoutBuilder,
          child: Text("LayoutBuilder"),
        ),
        const PopupMenuItem(
          value: PopUpMenuPages.buttonsAndTextRottation,
          child: Text("Botões e Rotações"),
        ),
        const PopupMenuItem(
          value: PopUpMenuPages.childAndListView,
          child: Text("ChildScroll e ListView"),
        ),
        const PopupMenuItem(
          value: PopUpMenuPages.dialogs,
          child: Text("Dialogs"),
        ),
        const PopupMenuItem(
          value: PopUpMenuPages.snackBar,
          child: Text("SnackBar"),
        ),
        const PopupMenuItem(
          value: PopUpMenuPages.forms,
          child: Text("Forms"),
        ),
        const PopupMenuItem(
          value: PopUpMenuPages.cidades,
          child: Text("Cidades"),
        ),
        const PopupMenuItem(
          value: PopUpMenuPages.stack,
          child: Text("Stack"),
        ),
        const PopupMenuItem(
          value: PopUpMenuPages.bottomNavigator,
          child: Text("Bottom Navigator"),
        ),
        const PopupMenuItem(
          value: PopUpMenuPages.circularAvatar,
          child: Text("CircularAvatar"),
        ),
        const PopupMenuItem(
          value: PopUpMenuPages.colors,
          child: Text("Colors"),
        ),
                const PopupMenuItem(
          value: PopUpMenuPages.banner,
          child: Text("Banner"),
        ),
      ];
    },
  );
}
