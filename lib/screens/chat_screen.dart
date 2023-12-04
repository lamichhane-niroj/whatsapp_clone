import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/consts/colors.dart';
import 'package:whatsapp_clone/consts/values.dart';
import 'package:whatsapp_clone/info/messages.dart';
import 'package:whatsapp_clone/widgets/bottom_text_field.dart';
import 'package:whatsapp_clone/widgets/my_message.dart';
import 'package:whatsapp_clone/widgets/sender_message.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appbar
      appBar: AppBar(
        backgroundColor: appBarColor,
        leadingWidth: 23,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 6.0),
              child: CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(info[index]["profilePic"]!),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  info[index]["name"]!,
                  style: const TextStyle(fontSize: 18, color: textColor),
                ),
                Text(
                  "last seen ${messages.last["time"]}",
                  style: TextStyle(fontSize: 13, color: Colors.grey.shade300),
                )
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.videocam_fill,
                size: appBarIconSize,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.phone_fill,
                size: appBarIconSize,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                size: appBarIconSize,
              )),
        ],
      ),

      // messages to be shown
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/backgroundimage.png")),
              ),
              child: ListView.builder(
                  itemCount: messages.length,
                  itemBuilder: (context, index) {
                    if (messages[index]["isMe"] == true) {
                      return MyMessage(index: index);
                    }
                    return SenderMessage(index: index);
                  }),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/backgroundimage.png"),
                  fit: BoxFit.cover),
            ),
            child: const BottomTextField(),
          )
        ],
      ),
    );
  }
}
