import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:parte3/widgets/imc_widgets/imc_grafic_drawn.dart';

class imcTemplate extends StatefulWidget {
  const imcTemplate({super.key});

  @override
  State<imcTemplate> createState() => imcTemplateState();
}

TextEditingController controllerWeight = TextEditingController();
TextEditingController controllerHeight = TextEditingController();
final formKey = GlobalKey<FormState>();
double soma = 0;

class imcTemplateState extends State<imcTemplate> {
  void sumImc({required dynamic peso, required dynamic altura}) {
    setState(() => soma = 0);

    try {
      Future.delayed(const Duration(seconds: 1, milliseconds: 500), () {
        setState(() {
          soma = double.parse(peso) /
              (double.parse(altura) * double.parse(altura));
        });
      });
    } catch (error) {
      showDialog(
        context: context,
        builder: (builder) => SimpleDialog(
          title: Text(
              "Não foi possível transfomar em inteiro por motivos de => $error"),
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
    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ImcGrafic(imcValue: soma),
          const SizedBox(height: 30),
          TextFormField(
            controller: controllerWeight,
            validator: (value) => value == "" || value == null
                ? "O campo não podeestar em branco"
                : "",
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
            validator: (value) => value == "" || value == null
                ? "O campo não podeestar em branco"
                : "",
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
            onPressed: () {
              formKey.currentState!.validate;
              sumImc(
                peso: controllerWeight.text,
                altura: controllerHeight.text,
              );
            },
            child: const Text("Calcular-IMC"),
          ),
          const SizedBox(height: 10),
          Text("O Imc é de ${soma != 0 ? soma : ''}")
        ],
      ),
    );
  }
}
