import 'package:flutter/material.dart';

class loader {
  static Widget circularProgress(
          {double? value,
          Animation<Color>? valueColor,
          Color? backgroundColor}) =>
      Center(
        child: CircularProgressIndicator.adaptive(
          value: value,
          valueColor: valueColor,
          backgroundColor: backgroundColor,
        ),
      );
  static Widget LinearProgress(
          {double? value,
          Color? backgroundColor,
          Color? Color,
          Animation<Color>? valueColor,
          double? minHight,
          String? semetricalLabel,
          String? semetricalValue}) =>
      Center(
        child: LinearProgressIndicator(
          value: value,
          backgroundColor: backgroundColor,
          color: Color,
          valueColor: valueColor,
          minHeight: minHight,
          semanticsLabel: semetricalLabel,
          semanticsValue: semetricalValue,
        ),
      );
}
