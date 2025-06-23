import 'package:flutter/material.dart';

import 'active_status_dot.dart';


class ActiveStatusClip extends StatelessWidget {
  const ActiveStatusClip({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 11),
      decoration: BoxDecoration(
        color: Colors.grey[850],
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Row(
        children: [
          ActiveStatusDot(
            size: 8,
            strokeColor: Colors.green,
            strokeWidth: 0,
            fillColor: Colors.green,
          ),
          SizedBox(width: 3),
          Text("10 active",
              style: TextStyle(fontSize: 11, color: Colors.white)),
        ],
      ),
    );
  }
}
