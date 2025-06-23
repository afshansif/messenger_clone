import 'package:flutter/material.dart';

class EncryptionNotice extends StatelessWidget {
  const EncryptionNotice({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.grey[850], // dark background
          borderRadius: BorderRadius.circular(16),
        ),
        child: const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                Icon(Icons.lock, size: 14, color: Colors.grey),
                SizedBox(width: 6),
                Text(
                  "End-to-end encrypted",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                  ),
                ),

              ],
            ),

             Text.rich(
              TextSpan(
                style: TextStyle(color: Colors.grey, fontSize: 12),
                children: [
                  TextSpan(
                    text:
                        "Messages and calls are secured with end-to-end encryption.",
                  ),
                  TextSpan(
                    text:
                    " Only people in this chat can read, listen to, or share \nthem. ",
                  ),
                  TextSpan(
                    text: "Learn more",
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
