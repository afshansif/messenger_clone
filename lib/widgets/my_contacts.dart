import 'package:flutter/material.dart';
import 'package:messenger_clone/screens/chat_screen.dart';
import 'package:messenger_clone/widgets/chat_bottom_model_sheet.dart';
import 'package:messenger_clone/widgets/contact_list_tile.dart';

import '../data/info.dart';

class MyContacts extends StatelessWidget {
  const MyContacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4.0),
      child: ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: info.length - 1,
          itemBuilder: (context, index) {
            final data = info[index + 1];
            final url = "${data['name']}.jpeg";
            String lastSeen = data['lastSeen'];
            // Extract only the time
            RegExp regExp = RegExp(r'(\d{1,2}:\d{2} (AM|PM))');
            Match? match = regExp.firstMatch(lastSeen);
            String time = data['time'];
            if (match != null) {
              time = match.group(0)!;
            }
            return GestureDetector(
              onLongPress: () {
                showModalBottomSheet(
                  clipBehavior: Clip.none,
                  isScrollControlled: true,
                  constraints:const BoxConstraints(maxHeight: 490),
                  backgroundColor: Colors.grey[900],
                  shape:const  RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  context: context,
                  builder: (_) {
                    return ChatBottomModelSheet(
                      name: data['name'],
                    );
                  },
                );
              },
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                  return ChatScreen(
                    name: data['name'],
                    url: url,
                    lastSeen: data['lastSeen'],
                    lastMessage: data['message'],
                    time: time,
                    isActive: data["isOnline"],
                  );
                }));
              },
              child: ContactListTile(
                url: url,
                name: data['name'],
                radius: 27.0,
                lastMessage: data['message'],
                time: time,
                isActive: data["isOnline"],
              ),
            );
          }),
    );
  }
}
