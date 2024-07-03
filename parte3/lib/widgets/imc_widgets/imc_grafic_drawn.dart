import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import 'imc_gauge_range.dart';

class ImcGrafic extends StatefulWidget {
  ImcGrafic({super.key, required this.imcValue});

  double imcValue;

  @override
  State<ImcGrafic> createState() => _ImcGraficState();
}

class _ImcGraficState extends State<ImcGrafic> {
  @override
  Widget build(BuildContext context) {
    return SfRadialGauge(
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
              value: widget.imcValue,
              enableAnimation: true,
            ),
          ],
        ),
      ],
    );
  }
}
