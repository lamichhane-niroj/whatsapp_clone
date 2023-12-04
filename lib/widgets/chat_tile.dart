import 'package:flutter/material.dart';
import 'package:whatsapp_clone/consts/colors.dart';
import 'package:whatsapp_clone/info/messages.dart';
import 'package:whatsapp_clone/screens/chat_screen.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: info.length,
      itemBuilder: (context, index) => Container(
        padding: const EdgeInsets.symmetric(vertical: 7),
        child: ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(info[index]["profilePic"]!),
            ),
            title: Text(
              info[index]["name"]!,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            subtitle: Text(
              info[index]["message"]!,
              style: const TextStyle(fontSize: 15),
            ),
            trailing: Text(
              info[index]["date"]!,
              style: const TextStyle(color: appBarTextColor),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ChatScreen(
                            index: index,
                          )));
            }),
      ),
    );
  }
}
