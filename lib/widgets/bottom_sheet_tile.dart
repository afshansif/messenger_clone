import 'package:flutter/material.dart';

class BottomSheetTile extends StatelessWidget {
  const BottomSheetTile(
      {super.key, required this.iconData, required this.title, this.color});

  final IconData iconData;
  final String title;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final col = Colors.white.withOpacity(0.9);
    return ListTile(
      leading: Icon(
        iconData,
        color: color ??col ,
      ),
      title: Text(
        title,
        style: TextStyle(color: color ?? col),
      ),
    );
  }
}
