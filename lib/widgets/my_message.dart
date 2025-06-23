import 'package:flutter/material.dart';

class MyMessage extends StatelessWidget {
  const MyMessage({super.key, required this.lastMessage, required this.color});

  final String lastMessage;
  final Color color;

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
      margin: const EdgeInsets.only(
          right: 10, top: 18, bottom: 5, left: 100),
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        //softWrap: true,
        overflow: TextOverflow.visible,
        lastMessage,
        style: const TextStyle(fontSize: 15,color: Colors.white,),

      ),
    );
  }
}
