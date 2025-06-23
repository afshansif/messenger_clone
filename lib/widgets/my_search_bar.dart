import 'package:flutter/material.dart';
import 'package:messenger_clone/colors/color.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(

      padding: const EdgeInsets.only(left: 15.0, top: 0,bottom: 10,right: 15),
      child: TextField(
        decoration: InputDecoration(
          isDense: true,

          fillColor: kBackgroundIconColor,
          filled: true,
          hintText: "Search",
          hintStyle: const TextStyle(fontSize: 16, color: Colors.grey),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(36),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
