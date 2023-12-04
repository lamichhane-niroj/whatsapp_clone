import 'package:flutter/material.dart';
import 'package:whatsapp_clone/consts/colors.dart';
import 'package:whatsapp_clone/consts/values.dart';

class BottomTextField extends StatefulWidget {
  const BottomTextField({super.key});

  @override
  State<BottomTextField> createState() => _BottomTextFieldState();
}

class _BottomTextFieldState extends State<BottomTextField> {
  String inputString = "";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0, left: 5, right: 5, top: 5),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              onChanged: (value) {
                setState(() {
                  inputString = value;
                });
              },
              decoration: InputDecoration(
                  hintText: "Message",
                  hintStyle: const TextStyle(fontSize: 20),
                  suffixIcon: const Icon(
                    Icons.camera_alt,
                    size: appBarIconSize,
                  ),
                  prefixIcon: const Icon(
                    Icons.emoji_emotions,
                    size: appBarIconSize,
                  ),
                  prefixIconColor: Colors.grey,
                  suffixIconColor: Colors.grey,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  filled: true,
                  fillColor: mobileChatBoxColor,
                  contentPadding:
                      const EdgeInsets.only(left: 10, top: 23, bottom: 5)),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          CircleAvatar(
            backgroundColor: sendColor,
            radius: 25,
            child: Icon(
              inputString.isEmpty ? Icons.mic : Icons.send,
              size: appBarIconSize,
              color: textColor,
            ),
          )
        ],
      ),
    );
  }
}
