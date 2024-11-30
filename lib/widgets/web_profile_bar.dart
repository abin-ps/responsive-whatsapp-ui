import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/colors.dart';

import '../info.dart';

class WebProfileBar extends StatelessWidget {
  const WebProfileBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .077,
      width: MediaQuery.of(context).size.width * .25,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
          color: webAppBarColor,
          border: Border(
              right: BorderSide(
            color: dividerColor,
          ))),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(info[0]["profilePic"].toString()),
          ),
          const Spacer(),
          IconButton(onPressed: () {}, icon: const Icon(Icons.comment, color: Colors.grey)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert, color: Colors.grey)),
        ],
      ),
    );
  }
}
