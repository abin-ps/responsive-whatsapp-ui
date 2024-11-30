import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/widgets/chat_list.dart';
import 'package:whatsapp_ui_clone/widgets/contacts_list.dart';
import 'package:whatsapp_ui_clone/widgets/message_input_field.dart';
import 'package:whatsapp_ui_clone/widgets/web_app_bar.dart';
import 'package:whatsapp_ui_clone/widgets/web_profile_bar.dart';
import 'package:whatsapp_ui_clone/widgets/web_search_bar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  WebProfileBar(),
                  WebSearchBar(),
                  ContactsList(),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * .75,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/chat_bg.png"),
              fit: BoxFit.cover,
            )),
            child: const Column(
              children: [
                WebAppBar(),
                ChatList(),
                MessageInputField(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
