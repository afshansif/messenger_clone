import 'package:flutter/material.dart';
import 'package:messenger_clone/widgets/new_message_screen_tile.dart';

import '../data/info.dart';

class NewMessageScreen extends StatelessWidget {
  const NewMessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Colors.white.withOpacity(0.9);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "New message",
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 16.0),
            child: Row(
              children: [
                Text(
                  "To: ",
                  style: TextStyle(color: Colors.grey, fontSize: 15.5),
                ),
                Expanded(
                  child: TextField(
                    cursorColor: Colors.blue,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      hintText: "Type a name or group",
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 15.5),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                NewMessageScreenTile(
                  title: "Group chat",
                  child: Icon(Icons.group, color: color),
                ),
                NewMessageScreenTile(
                  title: "Community",
                  child: Icon(Icons.groups, color: color),
                ),
                NewMessageScreenTile(
                  title: "AI Studio Chats",
                  child: Icon(Icons.auto_awesome, color: color),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 16, top: 23, bottom: 15),
                  child: Text(
                    "Suggested",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: info.length - 1,
                  itemBuilder: (context, index) {
                    final cont = info[index + 1];
                    String url = "${cont['name']}.${cont["imageType"]}";
                    String name = cont['name'];

                    return NewMessageScreenTile(
                      title: name,
                      child: ClipOval(
                        child: Image.asset(
                          "assets/images/$url",
                          fit: BoxFit.cover,
                          height: 50,
                          width: 50,
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
