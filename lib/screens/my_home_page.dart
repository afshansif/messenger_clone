import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messenger_clone/colors/color.dart';
import 'package:messenger_clone/screens/new_message_screen.dart';
import 'package:messenger_clone/screens/stories_screen.dart';
import 'package:messenger_clone/screens/menu_screen.dart';
import 'package:messenger_clone/widgets/active_status_clip.dart';
import 'package:messenger_clone/widgets/active_status_dot.dart';
import 'package:messenger_clone/widgets/custom_nav_bar.dart';
import '../data/info.dart';
import 'chats_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  final onlineContacts =
  info.where((contact) => contact["isOnline"] == true).toList();

  int currentIndex = 0;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  List<Widget> screens = [
    const ChatsScreen(),
    const StoriesScreen(),
    const MenuScreen(),
  ];

  List<String> title = ["messenger", "Stories", "Menu"];

  @override
  Widget build(BuildContext context) {
    List<List<Widget>> actions = [
      [
        IconButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) => const NewMessageScreen(),
              ),
            );
          },
          icon: const Icon(
            CupertinoIcons.square_pencil,
            color: Colors.white,
          ),
        ),
        const Icon(Icons.facebook, color: Colors.white),
        const SizedBox(width: 15),
      ],
      [
        const ActiveStatusClip(),
        const SizedBox(width: 15),
      ],
      [
        const Icon(Icons.qr_code_scanner_outlined, color: Colors.white),
        const SizedBox(width: 15),
      ],
    ];

    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Text(
          title[currentIndex],
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: kStandardColor,
          ),
        ),
        actions: actions[currentIndex],
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(

        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },

        items:  [
          const BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.chat_bubble_fill),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
                icon: SizedBox(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: 12,
                    height: 18,
                    color: currentIndex == 1 ? Colors.blue : Colors.grey,
                  ),
                  Positioned(
                    bottom: 1.5,
                    left: 13.5,
                    child: Container(
                      width: 6,
                      height: 14,
                      color: currentIndex == 1 ? Colors.blue : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            label: 'Stories',
          ),

          const BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu',
          ),
        ],
      ),
    );
  }
}
