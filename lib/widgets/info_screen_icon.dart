import 'package:flutter/material.dart';
import 'package:messenger_clone/colors/color.dart';

class InfoScreenIcon extends StatelessWidget {
  const InfoScreenIcon({super.key, required this.icon, required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: Colors.grey[900],
          child:  Icon(
            icon,
            color: Colors.white,
            size: 20,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          text,
          style:const  TextStyle(color: Colors.white, fontSize: 13),
        )
      ],
    );
  }
}
