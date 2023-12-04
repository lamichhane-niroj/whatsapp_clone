import 'package:flutter/material.dart';
import 'package:whatsapp_clone/consts/colors.dart';
import 'package:whatsapp_clone/consts/values.dart';
import 'package:whatsapp_clone/info/messages.dart';

class WebProfileBar extends StatelessWidget {
  const WebProfileBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.077,
      width: MediaQuery.of(context).size.width * 0.30,
      margin: const EdgeInsets.only(left: 15),
      color: appBarColor,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 6.0, left: 20),
            child: CircleAvatar(
              radius: 22,
              backgroundImage: NetworkImage(info[0]["profilePic"]!),
            ),
          ),
          const Spacer(),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.groups,
                size: appBarIconSize,
                color: appBarTextColor,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.sync,
                size: appBarIconSize,
                color: appBarTextColor,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.message,
                size: appBarIconSize,
                color: appBarTextColor,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                size: appBarIconSize,
                color: appBarTextColor,
              )),
        ],
      ),
    );
  }
}
