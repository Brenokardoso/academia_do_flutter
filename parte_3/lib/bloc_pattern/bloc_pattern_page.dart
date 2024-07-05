import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:parte3/bloc_pattern/bloc_controller.dart';
import 'package:parte3/bloc_pattern/bloc_state.dart';
import 'package:parte3/widgets/imc/imc_drawn.dart';
import 'package:parte3/widgets/imc/imc_gauge_range.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class ImxBlocPattern extends StatefulWidget {
  const ImxBlocPattern({super.key});

  @override
  State<ImxBlocPattern> createState() => ImxBlocPatternState();
}

TextEditingController controllerWeightStreamBloc = TextEditingController();
TextEditingController controllerHeightStreamBloc = TextEditingController();
double imc = 0.0;
ImcBlocController controller = ImcBlocController();

class ImxBlocPatternState extends State<ImxBlocPattern> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    controllerHeightStreamBloc.dispose();
    controllerWeightStreamBloc.dispose();
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("IMC-Bloc Pattern"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              StreamBuilder<ImcState>(
                stream: controller.imcOut,
                builder: (context, streamData) {
                  double imc = 0;
                  if (streamData.hasData) {
                    imc = streamData.data!.imc;
                  }
                  return ImcDraw(value: imc);
                },
              ),
              const SizedBox(height: 30),
              TextFormField(
                controller: controllerWeightStreamBloc,
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
                controller: controllerHeightStreamBloc,
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
                  controller.imcSum(
                      peso: controllerWeightStreamBloc.text,
                      altura: controllerHeightStreamBloc.text);
                },
                child: const Text("Calcular-IMC"),
              ),
              const SizedBox(height: 10),
              Text("O Imc é de ${imc != 0.0 ? imc : ''}")
            ],
          ),
        ),
      ),
    );
  }
}
