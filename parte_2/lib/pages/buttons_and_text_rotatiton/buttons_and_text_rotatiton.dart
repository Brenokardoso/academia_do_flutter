import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ButtonsAndTextRottation extends StatelessWidget {
  const ButtonsAndTextRottation({super.key});

  @override
  Widget build(BuildContext context) {
    var space = const SizedBox(height: 20);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Botões e rotação de texto"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RotatedBox(
              quarterTurns: -2,
              child: Container(
                alignment: Alignment.center,
                color: Colors.lightBlueAccent,
                width: 100,
                height: 100,
                child: const Text("Breno Cardoso"),
              ),
            ),
            space,
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(24),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Colors.red, width: 2.0),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text("TextButton"),
            ),
            space,
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.bus_alert_outlined),
              style: IconButton.styleFrom(),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(),
              child: const Text('Normal elevatedButton'),
            ),
            space,
            ElevatedButton.icon(
              onPressed: () {},
              label: const Text(
                "Elevated Button icon",
              ),
              icon: const Icon(Icons.ac_unit),
            ),
            space,
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                shadowColor: MaterialStateProperty.all<Color>(Colors.black),
                backgroundColor: MaterialStateProperty.resolveWith(
                  (states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.red;
                    }
                    if (states.contains(MaterialState.hovered)) {
                      return Colors.yellow;
                    }
                    return Colors.green;
                  },
                ),
              ),
              child: const Text(
                'Elevated button with style',
                style: TextStyle(color: Colors.white),
              ),
            ),
            space,
            InkWell(
              onTap: () {
                return print("TAP INK");
              },
              mouseCursor: SystemMouseCursors.click,
              child: Container(
                alignment: Alignment.center,
                color: Colors.orange,
                width: 75,
                height: 75,
                child: const Text(
                  'Container com inkWell',
                  softWrap: true,
                ),
              ),
            ),
            space,
            GestureDetector(
              onTap: () {
                return print("TAP GESTURE");
              },
              child: Container(
                alignment: Alignment.center,
                width: 150,
                height: 100,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.purple, Colors.pink, Colors.tealAccent],
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: const Text(
                  'Container com Gesture Detector',
                  softWrap: true,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
