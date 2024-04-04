import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weixin/widget/message_card.dart';

import 'other/line.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _messageController = TextEditingController();
  List<String> _messages = [];

  void _sendMessage(String message) {
    setState(() {
      _messages.add(message);
    });
    _messageController.clear();
  }

  double screenWith(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  String getCurrentTime() {
    DateTime now = DateTime.now();
    DateFormat formatter = DateFormat('yyyy-MM-dd HH:mm');
    String formattedTime = formatter.format(now);
    return formattedTime;
  }

  Widget _buildMessageList() {
    return Expanded(
      child: ListView.builder(
        itemCount: _messages.length,
        itemBuilder: (BuildContext context, int index) {
          // return ListTile(
          //   title: Text(_messages[index]),
          // );
          return MessageCard( messageText: _messages[index], sentTime: getCurrentTime());
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          _buildMessageList(),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    height: 1.0,
                    color: Colors.grey[300],
                  ),
                  Row(
                    children: <Widget>[
                      // Expanded(
                      //   child: TextField(
                      //     controller: _messageController,
                      //     onSubmitted: (String value) {
                      //       if (value.isNotEmpty) {
                      //         _sendMessage(value);
                      //       }
                      //     },
                      //   ),
                      // ),
                      GestureDetector(
                          onTap: () {
                            //语言功能
                          },
                          child: Container(
                            height: 28,
                            width: 28,
                            margin: const EdgeInsets.only(right: 10),
                            child: const Image(
                              image: AssetImage(
                                  'images/brand_profile_voice@2x.png'),
                            ),
                          )),
                      Container(
                          width: screenWith(context) - 120,
                          height: 34.0,
                          margin: const EdgeInsets.only(left: 5, right: 5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, right: 8.0),
                            // 右边留有一些空间
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.grey, // 边框颜色
                                        width: 1.0, // 边框宽度
                                      ),
                                      borderRadius:
                                          BorderRadius.circular(10.0), // 边框圆角
                                    ),
                                    child: TextField(
                                      controller: _messageController,
                                      cursorColor: Colors.grey,
                                      style: const TextStyle(
                                        fontSize: 18.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w300,
                                      ),
                                      decoration: const InputDecoration(
                                        contentPadding: EdgeInsets.only(
                                            left: 5.0,
                                            right: 5.0,
                                            bottom: 14.0),
                                        border: InputBorder.none,
                                      ),
                                      onSubmitted: (String value) {
                                        if (value.isNotEmpty) {
                                          _sendMessage(value);
                                        }
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )),
                      IconButton(
                        icon: const Icon(Icons.send),
                        onPressed: () {
                          String message = _messageController.text.trim();
                          if (message.isNotEmpty) {
                            _sendMessage(message);
                          }
                        },
                      ),
                    ],
                  )
                ],
              )),
        ],
      ),
    );
  }
}
