import 'package:flutter/material.dart';
import 'package:messenger_clone/widgets/bottom_sheet_tile.dart';

class ChatBottomModelSheet extends StatelessWidget {
  const ChatBottomModelSheet({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 2.5,horizontal: 0),
          margin:const EdgeInsets.symmetric(vertical: 8,horizontal: 180),

          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.7),
            shape: BoxShape.rectangle,

            borderRadius: BorderRadius.circular(20),
          ),
        ),
        const BottomSheetTile(iconData: Icons.push_pin, title: 'Pin'),
        const BottomSheetTile(iconData: Icons.archive, title: "Archive"),
        const BottomSheetTile(iconData: Icons.notifications_off, title: "Mute"),
        BottomSheetTile(
            iconData: Icons.group,
            title: "Create group chat with ${name.split(" ").first}"),
        const BottomSheetTile(
            iconData: Icons.mark_email_unread, title: "Mark as unread"),
        const BottomSheetTile(iconData: Icons.block, title: "Restrict"),
        const BottomSheetTile(iconData: Icons.remove_circle, title: "Block"),
        BottomSheetTile(
          iconData: Icons.delete,
          title: "Delete",
          color: Colors.red.withOpacity(0.9),
        ),
      ],
    );
  }
}
