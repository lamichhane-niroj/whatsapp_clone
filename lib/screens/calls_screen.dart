import 'package:flutter/material.dart';
import 'package:whatsapp_clone/consts/colors.dart';
import 'package:whatsapp_clone/consts/values.dart';
import 'package:whatsapp_clone/widgets/call_logs.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const ListTile(
          leading: CircleAvatar(
            radius: 35,
            backgroundColor: sendColor,
            child: Icon(
              Icons.attach_file,
              size: appBarIconSize,
              color: textColor,
            ),
          ),
          title: Text(
            "Create call link",
            style: TextStyle(fontSize: 20),
          ),
          subtitle: Text(
            "Share a link for your WhatsApp call",
            style: TextStyle(fontSize: 16),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 13),
        ),

        // recent contacts
        const Text(
          "  Recent",
          style: TextStyle(fontSize: 18),
        ),

        for (int i = 0; i <= 3; i++) const CallLogs(),
      ],
    );
  }
}
