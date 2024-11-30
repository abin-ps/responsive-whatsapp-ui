import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/colors.dart';

class MyMessageCard extends StatelessWidget {
  const MyMessageCard({super.key, required this.message, required this.time});
  final String message;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width - 45),
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          color: messageColor,
          margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          child: Stack(
            children: [
              Padding(
                  padding: const EdgeInsets.only(left: 10, top: 5, right: 30, bottom: 20),
                  child: Text(message, style: const TextStyle(fontSize: 15))),
              Positioned(
                  right: 10,
                  bottom: 2,
                  child: Row(
                    children: [
                      Text(time, style: const TextStyle(fontSize: 13, color: Colors.white60)),
                      const SizedBox(width: 5),
                      const Icon(Icons.done_all, color: Colors.white60)
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
