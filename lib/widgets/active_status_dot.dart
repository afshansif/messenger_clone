import 'package:flutter/material.dart';

class ActiveStatusDot extends StatelessWidget {
  const ActiveStatusDot({
    super.key,
    required this.size,
    required this.strokeColor,
    required this.strokeWidth,
    required this.fillColor,
  });

  final double size;
  final Color strokeColor;
  final double strokeWidth;
  final Color fillColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: fillColor,
        border: Border.fromBorderSide(
          BorderSide(
            color: strokeColor,
            width: strokeWidth,
          ),
        ),
      ),
    );
  }
}
