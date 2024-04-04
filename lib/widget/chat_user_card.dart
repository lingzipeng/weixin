import 'package:flutter/material.dart';

class ChatUserCard extends StatelessWidget {
  const ChatUserCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 100),
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        elevation: 0.5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: InkWell(
          child: ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.network(
                "images/arrowOnclick_ico@2x.png",
                width: 60,
                height: 60,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) =>
                    const CircleAvatar(
                  child: Icon(Icons.person),
                ),
              ),
            ), // 替换为最后一条消息的时间或状态显示
          ),
        ),
      ),
    );
  }
}
