import 'package:flutter/material.dart';

class CustomDialogWidget extends Dialog {
  CustomDialogWidget({super.key})
      : super(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          child: Builder(builder: (context) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 500,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    textAlign: TextAlign.center,
                    "Caixa de dialogo de redirecionamento",
                    style: TextStyle(
                      color: Colors.white.withBlue(100),
                    ),
                  ),
                ),
                FloatingActionButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('Sair'),
                )
              ],
            );
          }),
        );
}
