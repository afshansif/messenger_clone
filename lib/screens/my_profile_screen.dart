import 'package:flutter/material.dart';
import 'package:messenger_clone/colors/color.dart';
import 'package:messenger_clone/widgets/active_status_icon.dart';
import 'package:messenger_clone/widgets/chat_head_icon.dart';
import 'package:messenger_clone/widgets/display_image.dart';

import 'package:messenger_clone/widgets/my_profile_labels.dart';
import 'package:messenger_clone/widgets/my_profile_tiles.dart';

import '../data/info.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final col = Colors.white.withOpacity(0.8);
    final me = info[0];
    String url = "${me['name']}.${me["imageType"]}";
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Settings",
          style: TextStyle(fontWeight: FontWeight.bold, color: col),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 18,
            ),
            SizedBox(
              height: 185,
              width: double.infinity,
              child: Column(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      DisplayImage(
                        url: url,
                        radius: 53,
                      ),
                      Positioned(
                        bottom: -8,
                        right: 0,
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.black,
                          child: CircleAvatar(
                            backgroundColor: Colors.grey[900],
                            radius: 20,
                            child:  Icon(
                              Icons.camera_alt,
                              color: col,
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    me['name'],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      color: col,
                    ),
                  ),
                ],
              ),
            ),
            MyProfileTiles(
              text: "Dark mode",
              subtitle: "On",
              child: Icon(
                Icons.dark_mode,
                color: col,
              ),
            ),
            const MyProfileTiles(
              text: "Active status",
              subtitle: "On",
              child: ActiveStatusIcon(),
            ),
            MyProfileTiles(
              text: "Username",
              child: Icon(
                Icons.alternate_email,
                color: col,
              ),
            ),
            const MyProfileLabels(text: "For families"),
            MyProfileTiles(
              text: "Family Center",
              child: Icon(
                Icons.supervised_user_circle,
                color: col,
              ),
            ),
            const MyProfileLabels(text: "Services"),
            MyProfileTiles(
              text: 'Orders',
              child: Icon(
                Icons.shopping_basket,
                color: col,
              ),
            ),
            MyProfileTiles(
              text: "Payments",
              child: Icon(
                Icons.payment,
                color: col,
              ),
            ),
            const MyProfileLabels(text: "Preferences"),
            MyProfileTiles(
              text: "Avatar",
              child: Icon(
                Icons.face,
                color: col,
              ),
            ),
            MyProfileTiles(
              text: "Accessibility",
              child: Icon(
                Icons.accessibility,
                color: col,
              ),
            ),
            MyProfileTiles(
              text: "Privacy & safety",
              child: Icon(
                Icons.privacy_tip,
                color: col,
              ),
            ),
            MyProfileTiles(
              text: "Notifications & sounds",
              child: Icon(
                Icons.notifications,
                color: col,
              ),
            ),
            MyProfileTiles(
              text: "Data Savor",
              child: Icon(
                Icons.data_saver_on,
                color: col,
              ),
            ),
            MyProfileTiles(
              text: "Photo & media",
              child: Icon(
                Icons.photo,
                color: col,
              ),
            ),
            MyProfileTiles(
              text: "Memories",
              child: Icon(
                Icons.lock_clock,
                color: col,
              ),
            ),
            const MyProfileTiles(
              text: "Chat heads",
              subtitle: "Off",
              child: ChatHeadsIcon(),
            ),
            const MyProfileLabels(text: 'Safety'),
            MyProfileTiles(
              text: "Switch account",
              child: Icon(
                Icons.switch_account,
                color: col,
              ),
            ),
            MyProfileTiles(
              text: "Report technical problem",
              child: Icon(
                Icons.report_problem,
                color: col,
              ),
            ),
            MyProfileTiles(
              text: "Help",
              child: Icon(
                Icons.help,
                color: col,
              ),
            ),
            MyProfileTiles(
              text: "Legal & policies",
              child: Icon(
                Icons.file_copy,
                color: col,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 65, top: 30, right: 7, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.all_inclusive,
                        color: col,
                        size: 20,
                      ),
                      const SizedBox(width: 3),
                      Text(
                        "Meta",
                        style: TextStyle(
                          color: col,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "Accounts Center",
                    style: TextStyle(
                      color: col,
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "Manage your connected experiences and account settings across Meta technologies.",
                    style: TextStyle(color: col, fontSize: 15),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Icon(
                      Icons.person,
                      color: col,
                      size: 22,
                    ),
                    title: Text(
                      "Personal details",
                      style: TextStyle(color: col),
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Icon(
                      Icons.security,
                      color: col,
                      size: 22,
                    ),
                    title: Text(
                      "Password and security",
                      style: TextStyle(color: col),
                    ),
                  ),
                  Text(
                    "See more in Accounts Center",
                    style: TextStyle(
                      color: Colors.blue.withOpacity(0.9),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
