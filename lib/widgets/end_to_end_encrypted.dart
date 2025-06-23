import 'package:flutter/material.dart';
import 'package:messenger_clone/colors/color.dart';

class EndToEndEncrypted extends StatelessWidget {
  const EndToEndEncrypted({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 0),
      margin: const EdgeInsets.symmetric(horizontal: 100),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(40),
        color: Colors.grey[900],
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.lock_rounded,
            size: 13,
          ),
          SizedBox(width: 8),
          Text(
            "End-to-end encrypted",
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),

        ],
      ),
    );
  }
}
