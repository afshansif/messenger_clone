import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:messenger_clone/widgets/active_status_dot.dart';
import 'package:messenger_clone/widgets/display_image.dart';
import 'package:messenger_clone/widgets/encryption_notice.dart';
import 'package:messenger_clone/widgets/my_message.dart';

import '../colors/color.dart';
import 'info_screen.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen(
      {super.key,
      required this.name,
      required this.url,
      required this.lastSeen,
      required this.lastMessage,
      required this.time,
      required this.isActive});

  final String name;
  final String url;
  final String lastSeen;
  final String lastMessage;
  final String time;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    const color = Colors.blue;
    const size = 23.0;
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight + 10),
          child: AppBar(
            iconTheme: const IconThemeData(
              color: Colors.blue,
            ),
            titleSpacing: 0,
            title: GestureDetector(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) => InfoScreen(
                    url: url,
                    name: name,
                  ),
                ),
              ),
              child: Row(
                children: [

                  DisplayImage(url: url, radius: 20),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          isActive ? "Active" : lastSeen,
                          style:
                              const TextStyle(color: Colors.grey, fontSize: 13),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.phone, color: color, size: size)),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.videocam, color: color, size: size)),
              IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) => InfoScreen(
                        url: url,
                        name: name,
                      ),
                    ),
                  );
                },
                icon: const Icon(Icons.info, color: color, size: size),
              ),
              const SizedBox(width: 12),
            ],
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: ListView(
                reverse: true,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      MyMessage(
                        lastMessage: lastMessage,
                        color: color,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 20.0, bottom: 15),
                        child: Text(
                          "Sent",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                  Center(
                    child: Text(
                      time,
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const EncryptionNotice(),
                  const SizedBox(height: 5),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 140, vertical: 12),
                    height: 32,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[900],
                    ),
                    child: const Center(
                      child: Text(
                        "View profile",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const Center(
                    child: Text(
                      "You're friends on Facebook",
                    ),
                  ),
                  Center(
                    child: Text(
                      name,
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        DisplayImage(
                          url: url,
                          radius: 53,
                        ),
                        isActive
                            ? const Positioned(
                                bottom: 0,
                                right: 10,
                                child: ActiveStatusDot(
                                  size: 24,
                                  strokeColor: Colors.black,
                                  strokeWidth: 3,
                                  fillColor: Colors.green,
                                ),
                              )
                            : const SizedBox(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(Icons.add, color: color, size: size),
                  const Icon(Icons.camera_alt, color: color, size: size),
                  const Icon(Icons.photo, color: color, size: size),
                  const Icon(Icons.mic, color: color, size: size),
                  SizedBox(
                    height: 35,
                    width: 170,
                    child: Stack(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            fillColor: kBackgroundIconColor,
                            filled: true,
                            hintText: "Message",
                            hintStyle: const TextStyle(
                                fontSize: 15, color: Colors.grey),
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 17, vertical: 10),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(36),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                        const Positioned(
                          right: 10,
                          top: 5,
                          child: Icon(
                            Icons.emoji_emotions_rounded,
                            color: color,
                            size: size,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Icon(Icons.thumb_up, color: color, size: size),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
