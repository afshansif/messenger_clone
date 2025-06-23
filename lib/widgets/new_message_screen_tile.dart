import 'package:flutter/material.dart';

class NewMessageScreenTile extends StatelessWidget {
  const NewMessageScreenTile({super.key, required this.child, required this.title});

  final Widget child;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.grey[900],
        child: child,

      ),
      title: Text(title,style: const TextStyle(fontSize: 17),),
    );
  }
}
