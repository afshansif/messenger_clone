import 'package:flutter/material.dart';
import 'package:messenger_clone/colors/color.dart';

class MenuScreenTiles extends StatelessWidget {
  const MenuScreenTiles({super.key, required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(left:6.0),
      child: ListTile(
        leading: Icon(
          size: 25,
          icon,
          color: kStandardColor,
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            label,
            style:  TextStyle(
              fontSize: 15,

              color: kStandardColor,
            ),
          ),
        ),
      ),
    );
  }
}
