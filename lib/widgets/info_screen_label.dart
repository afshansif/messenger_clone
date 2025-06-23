import 'package:flutter/material.dart';

class InfoScreenLabel extends StatelessWidget {
  const InfoScreenLabel({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18, top: 20, bottom: 10),
      child: Text(
        text,
        style: const TextStyle(color: Colors.grey, fontSize: 15),
      ),
    );
  }
}
