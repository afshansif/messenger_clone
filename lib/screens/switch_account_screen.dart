import 'package:flutter/material.dart';

import '../widgets/display_image.dart';

class SwitchAccountScreen extends StatelessWidget {
  const SwitchAccountScreen({super.key, required this.url, required this.name});

  final String url;
  final String name;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Switch account",
            style: TextStyle(
              color: Colors.white.withOpacity(0.8),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: DisplayImage(url: url, radius: 20),
              title: Text(
                name,
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
              subtitle: const Text(
                "Signed in",
                style: TextStyle(color: Colors.grey, fontSize: 13),
              ),
              trailing: Icon(
                Icons.check,
                color: Colors.white.withOpacity(0.8),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4, left: 20, bottom: 10),
              child: Text(
                "Other Facebook accounts",
                style: TextStyle(
                    color: Colors.white.withOpacity(0.8), fontSize: 12),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.add,
                size: 30,
                color: Colors.white.withOpacity(0.8),
              ),
              title: Text(
                "Add account",
                style: TextStyle(color: Colors.white.withOpacity(0.8)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10, left: 20, bottom: 0),
              child: Text(
                "Add up to 5 accounts on this device. You'll be able to "
                    "switch between them and see you messages.",
                style: TextStyle(color:Colors.grey,fontSize: 12) ,),
            ),
          ],
        ),
      ),
    );
  }
}
