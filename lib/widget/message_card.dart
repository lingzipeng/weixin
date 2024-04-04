import 'package:flutter/material.dart';

import 'chat_user_card.dart';

class MessageCard extends StatelessWidget {
  final String messageText;
  final String sentTime;

  const MessageCard(
      {super.key, required this.messageText, required this.sentTime});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(sentTime,
            style: const TextStyle(fontSize: 13, color: Colors.black54)),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Container(
            //   width: 100.0,
            // ),
            Flexible(
              child: Container(
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: const BoxDecoration(
                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                constraints: BoxConstraints(maxWidth: 300),
                child: Text(
                  messageText,
                  style: const TextStyle(fontSize: 15, color: Colors.black87),
                ),
              ),
            ),
            const Column(
              children: [
                SizedBox(
                  width: 50,
                  height: 50,
                  child: Image(
                    image: AssetImage("images/xiaoheizi.jpg"),
                    fit: BoxFit.cover, // 设置图片填充方式
                  ),
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
