import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:parte3/change_notifier/imc_change_notifer_controller.dart';
import 'package:parte3/widgets/imc/imc_drawn.dart';
import 'package:parte3/widgets/imc/imc_gauge_range.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class ImcChangeNotifer extends StatefulWidget {
  const ImcChangeNotifer({super.key});

  @override
  State<ImcChangeNotifer> createState() => _ImcChangeNotiferState();
}

final controller = ImcChangeNotiferController();
TextEditingController controllerWeightChangeNotifier = TextEditingController();
TextEditingController controllerHeightChangeNotifer = TextEditingController();
double imc = 0;

class _ImcChangeNotiferState extends State<ImcChangeNotifer> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    controllerHeightChangeNotifer.dispose();
    controllerWeightChangeNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("IMC-ChangeNotifer"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedBuilder(
                animation: controller,
                builder: (context, child) => ImcDraw(value: controller.imc),
              ),
              const SizedBox(height: 30),
              TextFormField(
                controller: controllerWeightChangeNotifier,
                keyboardType: TextInputType.number,
                inputFormatters: [
                  CurrencyTextInputFormatter.currency(
                    symbol: '',
                    decimalDigits: 3,
                    turnOffGrouping: true,
                  )
                ],
                decoration: const InputDecoration(
                  labelText: 'Peso:',
                ),
              ),
              const SizedBox(height: 30),
              TextFormField(
                controller: controllerHeightChangeNotifer,
                keyboardType: TextInputType.number,
                inputFormatters: [
                  CurrencyTextInputFormatter.currency(
                    symbol: '',
                    decimalDigits: 2,
                    turnOffGrouping: true,
                  ),
                ],
                decoration: const InputDecoration(
                  labelText: 'Altura:',
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  controller.calculaImc(
                    peso: controllerWeightChangeNotifier.text,
                    altura: controllerHeightChangeNotifer.text,
                  );
                },
                child: const Text("Calcular-IMC"),
              ),
              const SizedBox(height: 10),
              Text(
                  "O Imc é de : ${controller.imc != 0 ? controller.imc : 'nenhum valor digitado'}")
            ],
          ),
        ),
      ),
    );
  }
}
