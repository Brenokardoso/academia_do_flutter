import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class ImcGaugeRange extends GaugeRange {
  ImcGaugeRange({
    super.key,
    required this.color,
    required this.label,
    required this.start,
    required this.end,
  }) : super(
          startValue: start,
          endValue: end,
          color: color,
          label: label,
          sizeUnit: GaugeSizeUnit.factor,
          labelStyle: const GaugeTextStyle(
            fontFamily: 'Times',
            fontSize: 12,
          ),
          startWidth: 0.65,
          endWidth: 0.65,
        );

  Color? color;
  String label;
  double start;
  double end;
}
