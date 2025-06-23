import 'package:flutter/material.dart';

class MyProfileLabels extends StatelessWidget {
  const MyProfileLabels({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 17, bottom: 6),
      child: Text(
        text,
        style:  TextStyle(
          
          fontSize: 15,
          color: Colors.white.withOpacity(0.8),
        ),
      ),
    );
  }
}
