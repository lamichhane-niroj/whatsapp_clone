import 'package:flutter/material.dart';
import 'package:whatsapp_clone/consts/colors.dart';
import 'package:whatsapp_clone/consts/values.dart';
import 'package:whatsapp_clone/screens/calls_screen.dart';
import 'package:whatsapp_clone/screens/groups_screen.dart';
import 'package:whatsapp_clone/screens/status_screen.dart';
import 'package:whatsapp_clone/widgets/chat_tile.dart';

class MobileScreenPlatform extends StatefulWidget {
  const MobileScreenPlatform({super.key});

  @override
  State<MobileScreenPlatform> createState() => _MobileScreenPlatformState();
}

class _MobileScreenPlatformState extends State<MobileScreenPlatform> {
  int _currentIndex = 1;

  List<Widget> tabScreen = [
    const GroupsScreen(),
    const ChatTile(),
    const StatusScreen(),
    const CallScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        // app bar
        appBar: AppBar(
          backgroundColor: appBarColor,
          title: const Text(
            "WhatsApp",
            style: TextStyle(fontSize: 24, color: appBarTextColor),
          ),
          centerTitle: false,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.camera_alt_outlined,
                  color: appBarTextColor,
                  size: appBarIconSize,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: appBarTextColor,
                  size: appBarIconSize,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                  color: appBarTextColor,
                  size: appBarIconSize,
                )),
          ],

          // tab bar
          bottom: TabBar(
            labelStyle: const TextStyle(fontSize: 17),
            labelColor: tabColor,
            unselectedLabelColor: appBarTextColor,
            indicatorColor: tabColor,
            tabs: const [
              Tab(
                icon: Icon(
                  Icons.groups,
                  size: 35,
                ),
              ),
              Tab(
                text: "Chats",
              ),
              Tab(
                text: "Status",
              ),
              Tab(
                text: "Calls",
              )
            ],
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),

        // chat tiles
        body: tabScreen[_currentIndex],

        //floating action button
        floatingActionButton: _currentIndex == 1
            ? FloatingActionButton(
                onPressed: () {},
                backgroundColor: tabColor,
                child: const Icon(
                  Icons.message,
                  color: textColor,
                  size: 28,
                ),
              )
            : _currentIndex == 2
                ? FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: tabColor,
                    child: const Icon(
                      Icons.camera_alt,
                      color: textColor,
                      size: 28,
                    ),
                  )
                : _currentIndex == 3
                    ? FloatingActionButton(
                        onPressed: () {},
                        backgroundColor: tabColor,
                        child: const Icon(
                          Icons.call_sharp,
                          color: textColor,
                          size: 28,
                        ),
                      )
                    : null,
      ),
    );
  }
}
