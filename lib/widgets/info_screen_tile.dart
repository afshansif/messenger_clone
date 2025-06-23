import 'package:flutter/material.dart';

class InfoScreenTile extends StatelessWidget {
  const InfoScreenTile(
      {super.key, required this.icon, required this.title, this.color,this.subtitle});

  final IconData icon;
  final String title;
  final Color? color;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: color ?? Colors.white.withOpacity(0.9),
        size: 25,
      ),
      title: Padding(
        padding: const  EdgeInsets.only(left: 14.0),
        child: Text(
          title,
          style: const TextStyle(
               fontSize: 16),
        ),
      ),
      subtitle: subtitle != null
      ? Padding(
        padding: const EdgeInsets.only(left: 14.0),
        child: Text(
        subtitle!,
        style: const TextStyle(color: Colors.grey,fontSize: 13),
            ),
      )
        : null,
    );
  }
}
