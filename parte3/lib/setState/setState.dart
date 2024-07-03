import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:parte3/widgets/imc_widgets/imc_gauge_range.dart';
import 'package:parte3/widgets/imc_widgets/imc_grafic_drawn.dart';
import 'package:parte3/widgets/imc_widgets/imc_tempalte.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class ImcSetState extends StatefulWidget {
  const ImcSetState({super.key});

  @override
  State<ImcSetState> createState() => _ImcSetStateState();
}

class _ImcSetStateState extends State<ImcSetState> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("IMC-setState"),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: imcTemplate(),
        ),
      ),
    );
  }
}
