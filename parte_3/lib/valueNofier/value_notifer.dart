import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:parte3/widgets/imc/imc_drawn.dart';
import 'package:parte3/widgets/imc/imc_gauge_range.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class ImcValueNofier extends StatefulWidget {
  const ImcValueNofier({super.key});

  @override
  State<ImcValueNofier> createState() => ImcValueNofierState();
}

TextEditingController controllerWeightValueNotifier = TextEditingController();
TextEditingController controllerHeightValueNotifier = TextEditingController();
ValueNotifier<double> imc = ValueNotifier(0.0);

class ImcValueNofierState extends State<ImcValueNofier> {
  @override
  void initState() {
    imc;
    super.initState();
  }

  @override
  void dispose() {
    controllerHeightValueNotifier.dispose();
    controllerWeightValueNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("IMC-ValueNotifier"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ValueListenableBuilder<double>(
                valueListenable: imc,
                builder: (_, value, __) {
                  try {
                    imc.value = double.parse(
                            controllerWeightValueNotifier.text) /
                        (double.parse(controllerHeightValueNotifier.text) *
                            double.parse(controllerHeightValueNotifier.text));
                  } catch (error) {
                    showDialog(
                      context: context,
                      builder: (builder) => SimpleDialog(
                        title: Text(
                            "Não foi possível transfomar em inteiro por motivos de  $error"),
                        children: List.generate(
                          5,
                          (index) => const Center(
                            child: Text("Alerta"),
                          ),
                        ),
                      ),
                    );
                  }

                  return ImcDraw(value: value);
                },
              ),
              const SizedBox(height: 30),
              TextFormField(
                controller: controllerWeightValueNotifier,
                keyboardType: TextInputType.number,
                inputFormatters: [
                  CurrencyTextInputFormatter.currency(
                    // locale: 'pt_br',
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
                controller: controllerHeightValueNotifier,
                keyboardType: TextInputType.number,
                inputFormatters: [
                  CurrencyTextInputFormatter.currency(
                    // locale: 'pt_br',
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
                onPressed: () {},
                child: const Text("Calcular-IMC"),
              ),
              const SizedBox(height: 10),
              Text("O Imc é de ${imc.value != 0.0 ? imc.value : ''}")
            ],
          ),
        ),
      ),
    );
  }
}
