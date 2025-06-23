import 'package:flutter/material.dart';
import 'package:messenger_clone/widgets/display_image.dart';
import 'package:messenger_clone/widgets/end_to_end_encrypted.dart';
import 'package:messenger_clone/widgets/info_screen_icon.dart';
import 'package:messenger_clone/widgets/info_screen_label.dart';
import 'package:messenger_clone/widgets/info_screen_tile.dart';


class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key, required this.url, required this.name});

  final String url;
  final String name;

  @override
  Widget build(BuildContext context) {
    const sizeBox = SizedBox(
      width: double.infinity,
      height: 15,
    );
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_back, size: 30, color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert, size: 30, color: Colors.white),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              // height: 800,
              child: Column(
                children: [
                  sizeBox,
                  DisplayImage(url: url, radius: 53),
                  const SizedBox(height: 10),
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const EndToEndEncrypted(),
                  const SizedBox(height: 25),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InfoScreenIcon(icon: Icons.phone, text: "Audio"),
                      InfoScreenIcon(icon: Icons.videocam, text: "Video"),
                      InfoScreenIcon(icon: Icons.facebook, text: "Profile"),
                      InfoScreenIcon(icon: Icons.notifications, text: "Mute"),
                    ],
                  ),
                ],
              ),
            ),

            sizeBox,
            const InfoScreenLabel(text: "Customization"),
            ListTile(
              leading: Stack(
                alignment: Alignment.center,
                children: [
                  // Outer gradient circle
                  Container(
                    width: 25,
                    height: 25,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.blue),
                  ),
                  // Inner hole (background-colored circle)
                  Container(
                    width: 8,
                    height: 8,
                    decoration: const BoxDecoration(
                      color: Colors.black, // or your scaffold background
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
              title: const Padding(
                padding: EdgeInsets.only(left: 12.0),
                child: Text(
                  "Theme",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),

            const InfoScreenTile(
                icon: Icons.thumb_up,
                title: "Quick Reaction",
                color: Colors.blue),

            const InfoScreenTile(
                icon: Icons.format_color_text, title: 'Nicknames'),

            const InfoScreenTile(icon: Icons.edit, title: "Word effects"),

            const InfoScreenLabel(text: "More actions"),

            InfoScreenTile(
                icon: Icons.group,
                title: "Create group chat with ${name.split(" ").first}"),

            const InfoScreenTile(
                icon: Icons.photo, title: "View media, files & links"),
            // const InfoScreenTile(
            //     icon: Icons.file_download, title: "Save photos & videos"),

            const InfoScreenTile(
                icon: Icons.push_pin, title: "Pinned messages"),

            const InfoScreenTile(
                icon: Icons.search_rounded, title: "Search in conversation"),

            const InfoScreenTile(
              icon: Icons.notifications,
              title: "Notification & sounds",
              subtitle: "On",
            ),

            const InfoScreenTile(icon: Icons.share, title: "Share contact"),
            const InfoScreenLabel(text: "Privacy & support"),

            const InfoScreenTile(
                icon: Icons.safety_check, title: "Message permissions"),

            const InfoScreenTile(
                icon: Icons.lock, title: "Verify end-to-end encryption"),

            const InfoScreenTile(
              icon: Icons.history,
              title: "Disappearing message",
              subtitle: "Off",
            ),

            const InfoScreenTile(
              icon: Icons.remove_red_eye,
              title: "Read receipts",
              subtitle: 'On',
            ),

            const InfoScreenTile(
              icon: Icons.more_horiz_rounded,
              title: "Typing indicator",
              subtitle: "On",
            ),

            const InfoScreenTile(icon: Icons.block, title: "Restrict"),

            const InfoScreenTile(icon: Icons.remove_circle, title: "Block"),

            const InfoScreenTile(
              icon: Icons.report_problem,
              title: "Report",
              subtitle: "Give feedback and report conversation",
            ),
            const ListTile(
              leading: Icon(
                Icons.delete,
                color: Colors.red,
                size: 25,
              ),
              title: Padding(
                padding: EdgeInsets.only(left: 14.0),
                child: Text(
                  "Delete chat",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ),
            sizeBox,
          ],
        ),
      ),
    );
  }
}
