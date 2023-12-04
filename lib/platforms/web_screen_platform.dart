import 'package:flutter/material.dart';
import 'package:whatsapp_clone/consts/colors.dart';
import 'package:whatsapp_clone/info/messages.dart';
import 'package:whatsapp_clone/screens/chat_screen.dart';
import 'package:whatsapp_clone/widgets/web_profile_bar.dart';
import 'package:whatsapp_clone/widgets/web_search_bar.dart';

class WebScreenPlatform extends StatefulWidget {
  const WebScreenPlatform({super.key});

  @override
  State<WebScreenPlatform> createState() => _WebScreenPlatformState();
}

class _WebScreenPlatformState extends State<WebScreenPlatform> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Expanded(
          child: Column(
            children: [
              // profile bar
              const WebProfileBar(),

              // search bar
              const WebSearchBar(),

              // chat tiles
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: info.length,
                  itemBuilder: (context, index) => Container(
                    padding: const EdgeInsets.symmetric(vertical: 7),
                    child: ListTile(
                        leading: CircleAvatar(
                          radius: 25,
                          backgroundImage:
                              NetworkImage(info[index]["profilePic"]!),
                        ),
                        title: Text(
                          info[index]["name"]!,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
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
                          setState(() {
                            _selectedIndex = index;
                          });
                        }),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.70,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/backgroundimage.png"),
                fit: BoxFit.cover),
          ),
          child: ChatScreen(
            index: _selectedIndex,
          ),
        )
      ]),
    );
  }
}
