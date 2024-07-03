import 'package:flutter/material.dart';
import 'package:parte3/widgets/imc/imc_gauge_range.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class ImcDraw extends StatefulWidget {
  double value;
  ImcDraw({super.key, required this.value});

  @override
  State<ImcDraw> createState() => _ImcDrawState();
}

class _ImcDrawState extends State<ImcDraw> {
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
              value: widget.value,
              enableAnimation: true,
            ),
          ],
        ),
      ],
    );
  }
}
