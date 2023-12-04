import 'package:flutter/material.dart';
import 'package:whatsapp_clone/consts/colors.dart';
import 'package:whatsapp_clone/consts/values.dart';

class WebSearchBar extends StatelessWidget {
  const WebSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.05,
      width: MediaQuery.of(context).size.width * 0.28,
      margin: const EdgeInsets.only(top: 8, left: 20, right: 20),
      child: Row(
        children: [
          Expanded(
              child: TextField(
            decoration: InputDecoration(
                hintText: "Search or start new chat",
                hintStyle:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.w100),
                prefixIcon: const Icon(
                  Icons.search,
                  size: appBarIconSize,
                ),
                prefixIconColor: Colors.grey,
                suffixIconColor: Colors.grey,
                border: InputBorder.none,
                enabledBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                focusedBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                filled: true,
                fillColor: mobileChatBoxColor,
                contentPadding:
                    const EdgeInsets.only(left: 10, top: 23, bottom: 5)),
          )),
          const Icon(Icons.vertical_align_bottom)
        ],
      ),
    );
  }
}
