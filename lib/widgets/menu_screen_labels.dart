import 'package:flutter/material.dart';

class MenuScreenLabels extends StatelessWidget {
  const MenuScreenLabels({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
          color: Colors.grey,
        ),
      ),
    );
  }
}
