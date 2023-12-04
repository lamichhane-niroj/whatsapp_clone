import 'package:flutter/material.dart';
import 'package:whatsapp_clone/consts/colors.dart';
import 'package:whatsapp_clone/consts/values.dart';
import 'package:whatsapp_clone/info/messages.dart';

class CallLogs extends StatelessWidget {
  const CallLogs({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        radius: 35,
        backgroundColor: sendColor,
        child: Icon(
          Icons.attach_file,
          size: appBarIconSize,
          color: textColor,
        ),
      ),
      title: const Text(
        "Manoj Rai",
        style: TextStyle(fontSize: 20, color: Colors.red),
      ),
      subtitle: Row(
        children: [
          const Icon(
            Icons.arrow_outward,
            color: Colors.red,
          ),
          Text(
            " ${info[0]["date"]!}",
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
      trailing: const Icon(
        Icons.call,
        color: sendColor,
        size: appBarIconSize,
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 13),
    );
  }
}
