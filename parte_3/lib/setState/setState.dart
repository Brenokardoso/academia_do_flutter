import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:parte3/widgets/imc/imc_gauge_range.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class ImcSetState extends StatefulWidget {
  const ImcSetState({super.key});

  @override
  State<ImcSetState> createState() => _ImcSetStateState();
}

TextEditingController controllerWeight = TextEditingController();
TextEditingController controllerHeight = TextEditingController();
double soma = 0;

class _ImcSetStateState extends State<ImcSetState> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    controllerHeight.dispose();
    controllerWeight.dispose();
    super.dispose();
  }

  void sumImc({required dynamic peso, required dynamic altura}) {
    try {
      setState(() {
        soma =
            double.parse(peso) / (double.parse(altura) * double.parse(altura));
      });
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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("IMC-setState"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SfRadialGauge(
                axes: [
                  RadialAxis(
                    showLabels: false,
                    showTicks: false,
                    showAxisLine: false,
                    minimum: 12.5,
                    maximum: 47.9,
                    ranges: [
                      ImcGaugeRange(
                        color: Colors.blue,
                        label: 'Magreza'.toUpperCase(),
                        start: 12.5,
                        end: 18.5,
                      ),
                      ImcGaugeRange(
                        color: Colors.green,
                        label: "Normal".toUpperCase(),
                        start: 18.5,
                        end: 24.5,
                      ),
                      ImcGaugeRange(
                        color: Colors.yellow[300],
                        label: "SobrePeso".toUpperCase(),
                        start: 24.5,
                        end: 29.9,
                      ),
                      ImcGaugeRange(
                        color: Colors.red[500],
                        label: "Obesidade".toUpperCase(),
                        start: 29.9,
                        end: 39.9,
                      ),
                      ImcGaugeRange(
                        color: Colors.red[900],
                        label: "Obesidade Morbida".toUpperCase(),
                        start: 39.9,
                        end: 47.9,
                      ),
                    ],
                    pointers: [
                      NeedlePointer(
                        value: soma,
                        enableAnimation: true,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 30),
              TextFormField(
                controller: controllerWeight,
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
                controller: controllerHeight,
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
                onPressed: () => sumImc(
                  peso: controllerWeight.text,
                  altura: controllerHeight.text,
                ),
                child: const Text("Calcular-IMC"),
              ),
              const SizedBox(height: 10),
              Text("O Imc é de ${soma != 0 ? soma : ''}")
            ],
          ),
        ),
      ),
    );
  }
}
