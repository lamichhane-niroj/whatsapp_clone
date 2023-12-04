import 'package:flutter/material.dart';
import 'package:whatsapp_clone/consts/colors.dart';
import 'package:whatsapp_clone/info/messages.dart';

class StatusBarTile extends StatelessWidget {
  const StatusBarTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Stack(
        children: [
          CircleAvatar(
            radius: 35,
            backgroundImage: NetworkImage(info[0]["profilePic"]!),
          ),
          Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: sendColor,
                  ),
                  height: 23,
                  width: 23,
                  child: Icon(Icons.add)))
        ],
      ),
      title: const Text(
        "My status",
        style: TextStyle(fontSize: 20),
      ),
      subtitle: const Text(
        "Tap to add status update",
        style: TextStyle(fontSize: 16),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 13),
    );
  }
}
