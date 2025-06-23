import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar(
      {super.key, this.iconData, required this.label, this.icon});

  final IconData? iconData;
  final String label;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return NavigationDestination(
      enabled: true,
      icon:iconData != null? Icon(
        iconData,
        color: Colors.grey,
      ): icon!,
      label: label,
      selectedIcon: Icon(
        iconData,
        color: Colors.blue,
      ),
    );
  }
}
