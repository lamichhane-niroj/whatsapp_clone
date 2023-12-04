import 'package:flutter/material.dart';
import 'package:whatsapp_clone/consts/colors.dart';
import 'package:whatsapp_clone/info/messages.dart';

class SenderMessage extends StatelessWidget {
  const SenderMessage({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: ConstrainedBox(
        constraints:
            BoxConstraints(maxWidth: MediaQuery.of(context).size.width - 45),
        child: Card(
          elevation: 1,
          color: senderMessageColor,
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              topRight: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
          ),
          child: Stack(children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 10, right: 60, top: 4, bottom: 18),
              child: Text(
                messages[index]['text'].toString(),
                style:
                    const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ),
            ),
            Positioned(
                right: 10,
                bottom: 5,
                child: Row(
                  children: [
                    Text(
                      messages[index]["time"] as String,
                      style:
                          TextStyle(color: Colors.grey.shade300, fontSize: 13),
                    ),
                  ],
                ))
          ]),
        ),
      ),
    );
  }
}
