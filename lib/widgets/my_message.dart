import 'package:flutter/material.dart';
import 'package:whatsapp_clone/consts/colors.dart';
import 'package:whatsapp_clone/info/messages.dart';

class MyMessage extends StatelessWidget {
  const MyMessage({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ConstrainedBox(
        constraints:
            BoxConstraints(maxWidth: MediaQuery.of(context).size.width - 45),
        child: Card(
          elevation: 1,
          color: messageColor,
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              topLeft: Radius.circular(15),
              bottomRight: Radius.circular(25),
            ),
          ),
          child: Stack(children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 10, right: 88, top: 4, bottom: 18),
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
                    const SizedBox(
                      width: 5,
                    ),
                    const Icon(
                      Icons.done_all_outlined,
                      size: 20,
                      color: Color.fromARGB(255, 46, 123, 255),
                    )
                  ],
                ))
          ]),
        ),
      ),
    );
  }
}
