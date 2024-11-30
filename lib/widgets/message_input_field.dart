import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/colors.dart';

class MessageInputField extends StatelessWidget {
  const MessageInputField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .08,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
          color: chatBarMessage,
          border: Border(
            bottom: BorderSide(color: dividerColor),
          )),
      child: Row(
        children: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.emoji_emotions_outlined, color: Colors.grey)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.attach_file, color: Colors.grey)),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 15),
            child: TextFormField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: searchBarColor,
                  hintText: "Type a message",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20), borderSide: BorderSide.none),
                  contentPadding: const EdgeInsets.only(left: 15, right: 20)),
            ),
          )),
          IconButton(onPressed: () {}, icon: const Icon(Icons.mic, color: Colors.grey)),
        ],
      ),
    );
  }
}
