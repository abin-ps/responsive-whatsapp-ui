import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/colors.dart';
import 'package:whatsapp_ui_clone/info.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .077,
      width: MediaQuery.of(context).size.width * .75,
      padding: const EdgeInsets.all(10),
      color: webAppBarColor,
      child: Row(
        children: [
          CircleAvatar(radius: 30, backgroundImage: NetworkImage(info[0]["profilePic"].toString())),
          SizedBox(width: MediaQuery.of(context).size.width * .01),
          Text(info[0]["name"].toString(), style: const TextStyle(fontSize: 18)),
          const Spacer(),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search, color: Colors.grey)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert, color: Colors.grey)),
        ],
      ),
    );
  }
}
