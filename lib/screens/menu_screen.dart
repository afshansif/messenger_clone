import 'package:flutter/material.dart';
import 'package:messenger_clone/colors/color.dart';
import 'package:messenger_clone/data/info.dart';
import 'package:messenger_clone/screens/my_profile_screen.dart';
import 'package:messenger_clone/screens/switch_account_screen.dart';
import 'package:messenger_clone/widgets/menu_screen_labels.dart';
import 'package:messenger_clone/widgets/menu_screen_tile.dart';

import '../widgets/display_image.dart';
import '../widgets/my_profile_tiles.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final me = info[0];
    String url = "${me['name']}.${me["imageType"]}";
    String name = me['name'];
    const sizeBox = SizedBox(height: 0);

    return ListView(
      padding: EdgeInsets.zero,
      children: [
        GestureDetector(
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) => SwitchAccountScreen(
                name: name,
                url: url,
              ),
            ),
          ),
          child: ListTile(
            leading: DisplayImage(url: url, radius: 20),
            title: Text(
              name,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
            subtitle: const Text("Switch profile",
                style: TextStyle(color: Colors.grey, fontSize: 13)),
          ),
        ),
        GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (ctx) => const MyProfileScreen()));
            },
            child:
                const MenuScreenTiles(icon: Icons.settings, label: "Settings")),
        const Divider(height: 18, thickness: 2),
        const MenuScreenTiles(icon: Icons.store, label: "Marketplace"),
        sizeBox,
        const MenuScreenTiles(icon: Icons.chat, label: "Message Requests"),
        sizeBox,
        const MenuScreenTiles(icon: Icons.archive, label: "Archive"),
        const SizedBox(height: 20),
        const MenuScreenLabels(text: 'More'),
        const SizedBox(height: 10),
        const MenuScreenTiles(icon: Icons.group, label: 'Friend requests'),
        const MenuScreenTiles(
            icon: Icons.auto_awesome, label: 'AI Studio chats'),
        const MenuScreenTiles(icon: Icons.add, label: 'Create an AI'),
        const SizedBox(height: 20),
        const MenuScreenLabels(text: 'Communities'),
        const SizedBox(height: 10),
        const MenuScreenTiles(icon: Icons.add, label: 'Create Community'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const MenuScreenLabels(text: 'Facebook groups'),
            TextButton(
              onPressed: () {},
              child: Text(
                "Edit",
                style: TextStyle(
                  color: Colors.lightBlueAccent.withOpacity(0.8),
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        ListTile(
          leading: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: Colors.grey[700]?.withOpacity(0.7),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/images/ims.jpeg',
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              ),
            ),
          ),
          title: Text(
            "IMSCIENCES PESHAWAR",
            style: TextStyle(
              fontSize: 17,
              color: kStandardColor,
            ),
          ),
          subtitle: const Text(
            "947 active",
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
