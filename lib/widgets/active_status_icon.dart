import 'package:flutter/material.dart';
import 'package:messenger_clone/widgets/active_status_dot.dart';

class ActiveStatusIcon extends StatelessWidget {
  const ActiveStatusIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          child: CircleAvatar(
            backgroundColor: Colors.white.withOpacity(0.8),
            radius: 11,
          ),
        ),
        Positioned(
          right: -2,
          bottom: -2,
          child: ActiveStatusDot(
            size: 11,
            strokeColor: Colors.black,
            strokeWidth: 2,
            fillColor: Colors.white.withOpacity(0.8),
          ),
        ),
      ],
    );
  }
}
