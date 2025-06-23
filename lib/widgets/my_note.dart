import 'package:flutter/material.dart';

class MyNote extends StatelessWidget {
  const MyNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 0), // space for tail
      decoration: BoxDecoration(
        color: Colors.grey[850],
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.only(top: 8,left: 10,right: 8,bottom: 5),
      child: const Center(
        child: Text(
          "Drop a \nthought",
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
            fontSize: 9,
            height: 0
          ),
        ),
      ),
    );
  }
}
