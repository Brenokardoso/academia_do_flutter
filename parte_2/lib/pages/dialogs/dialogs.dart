import 'dart:io';

import 'package:flutter/material.dart';
import 'package:parte_2/pages/dialogs/dialog_pages/Dialog.dart';

class CustomDialogsPage extends StatelessWidget {
  const CustomDialogsPage({super.key});

  final Widget space = const SizedBox(height: 20);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dialogs"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => showDialog<Dialog>(
                  barrierDismissible:
                      false, //desativa sair da caixa de dialogo por eventos
                  context: context,
                  builder: (context) => CustomDialogWidget()),
              child: const Text("Dialog"),
            ),
            space,
            ElevatedButton(
              onPressed: () => customSimpleDialog(context),
              child: const Text("SimpleDialog"),
            ),
            space,
            ElevatedButton(
                onPressed: () => showDialog(
                      context: context,
                      builder: (context) {
                        // if (Platform.isLinux) {
                        //   print('Droga é o Linux');
                        // }
                        // if (Platform.isAndroid) {
                        //   print("Estou no android");
                        // }
                        //else if (Platform.isIOS) {
                        //   print("Estou no IOS");
                        // } else if (Platform.isMacOS) {
                        //   print("O pai tá de MAC");
                        // } else if (Platform.isWindows) {
                        //   print("Espero quw não seja o 10");
                        // }

                        return AlertDialog(
                          title: const Text('Dialogo de alerta'),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: List.generate(
                              10,
                              (index) => Container(
                                width: 25,
                                height: 25,
                                margin: const EdgeInsets.only(bottom: 10),
                                color: Color.fromRGBO(
                                    22 * index, 17 * index, 13 * index, 1),
                                child: Text("$index"),
                              ),
                            ),
                          ),
                          actions: const [
                            Text("1"),
                            Text("2"),
                            Text("3"),
                            Text("4"),
                          ],
                        );
                      },
                    ),
                child: const Text("AlertDialog")),
            space,
            ElevatedButton(
                onPressed: () async {
                  final horario = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  );
                  print(("São ${horario?.hour}:${horario?.minute}"));
                },
                child: const Text("Time Picker")),
            space,
            ElevatedButton(
              onPressed: () async {
                var tempo = await showDatePicker(
                  context: context,
                  firstDate: DateTime(2002),
                  lastDate: DateTime(2024),
                );
                print(
                    "O espaço de tempo de agora para dezembro  foi de : $tempo");
              },
              child: const Text("Date Picker"),
            ),
            space,
            ElevatedButton(
              onPressed: () => showAboutDialog(
                  context: context,
                  children: [const Text("Bem vindo em sobre os dialogos")]),
              child: const Text("AboutDaialogs"),
            ),
            space,
          ],
        ),
      ),
    );
  }
}

Future customSimpleDialog(context) => showDialog(
      context: context,
      builder: (_) => SimpleDialog(
        title: const Text("Exemplo de simple dialogs"),
        children: [
          Column(
            children: List.generate(
              10,
              (index) => Text(
                "Container de numero : $index",
                textAlign: TextAlign.center,
              ),
            ),
          ),
          exitButtom(context),
        ],
      ),
    );

Widget exitButtom(context) => FloatingActionButton(
      onPressed: () => Navigator.of(context).pop(),
      child: const Text('Sair'),
    );
