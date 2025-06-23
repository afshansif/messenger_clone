import 'package:flutter/material.dart';

class MyProfileTiles extends StatelessWidget {
  const MyProfileTiles({
    super.key,

    required this.text,
    this.trailing,
    this.subtitle,
    required this.child,
  });

  final String text;
  final Widget child;
  final Widget? trailing;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: child,
      title: Padding(
        padding: const EdgeInsets.only(left:5.0),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
      ),
      trailing: trailing,
      subtitle: subtitle != null
          ? Padding(
            padding: const EdgeInsets.only(left:5.0),
            child: Text(
                      subtitle!,
                      style: const TextStyle(color: Colors.grey,fontSize: 13),
                    ),
          )
          : null,
    );
  }
}