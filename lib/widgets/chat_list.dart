import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/info.dart';
import 'package:whatsapp_ui_clone/widgets/sender_message_card.dart';

import 'my_message_card.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: messages.length,
        itemBuilder: (context, index) => messages[index]["isMe"] == true
            ? MyMessageCard(message: messages[index]["text"].toString(), time: messages[index]["time"].toString())
            : SenderMessageCard(message: messages[index]["text"].toString(), time: messages[index]["time"].toString()),
      ),
    );
  }
}
