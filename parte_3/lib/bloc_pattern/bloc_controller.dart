import 'dart:async';
import 'dart:math';
import 'package:parte3/bloc_pattern/bloc_state.dart';

class ImcBlocController {
  final StreamController<ImcState> _streamController =
      StreamController<ImcState>()..add(ImcState(imc: 0));

  Stream<ImcState> get imcOut => _streamController.stream.asBroadcastStream();

  Future<void> imcSum({required peso, required altura}) async {
    peso = double.parse(peso);
    altura = double.parse(altura);
    _streamController.add(ImcState(imc: 0));
    await Future.delayed(const Duration(seconds: 1));
    var imc = peso / (pow(altura, 2));
    _streamController.add(ImcState(imc: imc));
  }

  void dispose() {
    _streamController.close();
  }
}
