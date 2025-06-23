import 'package:flutter/material.dart';
import 'package:messenger_clone/widgets/active_status_dot.dart';
import 'package:messenger_clone/widgets/display_image.dart';
import 'package:messenger_clone/widgets/my_note.dart';
import '../data/info.dart';

class ActiveContactsBar extends StatelessWidget {
  const ActiveContactsBar({super.key});

  @override
  Widget build(BuildContext context) {
    final onlineContacts =
        info.where((contact) => contact["isOnline"] == true).toList();

    return ConstrainedBox(
      constraints: const BoxConstraints(maxHeight: 120),
      child: ListView.builder(

        scrollDirection: Axis.horizontal,
        itemCount: onlineContacts.length,
        itemBuilder: (context, index) {
          final data = onlineContacts[index];
          final url = "${data['name']}.${data['imageType']}";

          return Padding(
            padding: const EdgeInsets.only(left: 17.0, top: 25),
            child: Column(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    DisplayImage(url: url, radius: 35),
                    index == 0
                        ? Positioned(
                            right: 0,
                            bottom: 0,
                            child: CircleAvatar(
                              radius: 12,
                              backgroundColor: Colors.grey[850],
                              child: const Icon(
                                Icons.add,
                                color: Colors.white70,
                                size: 17,
                              ),
                            ),
                          )
                        : const SizedBox(),
                    index != 0
                        ? const Positioned(
                            right: 0,
                            bottom: 0,
                            child: ActiveStatusDot(
                              size: 18,
                              strokeColor: Colors.black87,
                              strokeWidth: 3,
                              fillColor: Colors.green,
                            ),
                          )
                        : const Positioned(
                            top: -27,
                            left: -8,
                            child: MyNote(),
                          ),
                  ],
                ),
                // const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: index == 0
                      ? const Text(
                          'Create story',
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        )
                      : Text(
                          "${data['name'].split(" ").first}",
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
