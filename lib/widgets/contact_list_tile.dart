import 'package:flutter/material.dart';
import 'package:messenger_clone/widgets/active_status_dot.dart';
import 'package:messenger_clone/widgets/display_image.dart';

class ContactListTile extends StatelessWidget {
  const ContactListTile(
      {super.key,
      required this.url,
      required this.name,
      required this.radius,
      required this.lastMessage,
      required this.time,
      required this.isActive});

  final String url;
  final String name;

  final double radius;
  final String lastMessage;
  final String time;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Stack(
        clipBehavior: Clip.none,
        children: [
          DisplayImage(
            url: url,
            radius: radius,
          ),
          isActive
              ? const Positioned(
                  right: 0,
                  bottom: 0,
                  child: ActiveStatusDot(
                    size: 17,
                    strokeColor: Colors.black,
                    strokeWidth: 3,
                    fillColor: Colors.green,
                  ),
                )
              : const SizedBox(),
        ],
      ),
      title: Text(
        name,
      ),
      subtitle: Row(
        children: [
          Expanded(
            flex: 5,
            child: Text(
              lastMessage,
              style: const TextStyle(
                  overflow: TextOverflow.ellipsis, color: Colors.grey),
            ),
          ),
          SizedBox(width: 3,),
          Expanded(
            child: Text(
              time,
              style: const TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
