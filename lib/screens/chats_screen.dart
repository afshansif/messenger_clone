import 'package:flutter/material.dart';
import 'package:messenger_clone/widgets/active_contacts_bar.dart';

import 'package:messenger_clone/widgets/my_contacts.dart';

import '../widgets/my_search_bar.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView(
      children:const  [
        MySearchBar(),
        ActiveContactsBar(),
        MyContacts()
      ],
    );
  }
}
