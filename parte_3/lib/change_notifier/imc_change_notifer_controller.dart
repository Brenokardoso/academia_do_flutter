import 'dart:math';

import 'package:flutter/material.dart';

class ImcChangeNotiferController extends ChangeNotifier {
  var imc = 0.0;

  Future<void> calculaImc({required peso, required altura}) async {
    peso = double.parse(peso);
    altura = double.parse(altura);
    print("passei pot aqui");
    imc = 0;
    notifyListeners();
    await Future.delayed(const Duration(seconds: 1));
    imc = peso / pow(altura, 2);
    print("valor do imc : $imc");
    notifyListeners();
  }
}
