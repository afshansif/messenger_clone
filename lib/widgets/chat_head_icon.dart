import 'package:flutter/material.dart';
import 'package:messenger_clone/widgets/active_status_dot.dart';

class ChatHeadsIcon extends StatelessWidget {
  const ChatHeadsIcon({super.key});

  @override
  Widget build(BuildContext context) {
    final col = Colors.white.withOpacity(0.8);
    const size = 15.0;
    const sCol = Colors.black;
    const sWidth = 2.0;
    return  Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          top: -5,
          left: -5,
          child: ActiveStatusDot(
            size: size,
            strokeColor: sCol,
            strokeWidth: sWidth,
            fillColor: col,
          ),
        ),
        ActiveStatusDot(
          size: size,
          strokeColor: sCol,
          strokeWidth: sWidth,
          fillColor: col,
        ),
        Positioned(
          bottom: -5,
          right: -5,
          child: ActiveStatusDot(
            size: size,
            strokeColor: sCol,
            strokeWidth: sWidth,
            fillColor: col,
          ),
        ),
      ],
    );
  }
}
