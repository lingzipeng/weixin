import 'package:flutter/material.dart';
import 'dart:ui';

class WCAvatar extends StatefulWidget {
  const WCAvatar({super.key});

  @override
  _WCAvatarState createState() => _WCAvatarState();
}

class _WCAvatarState extends State<WCAvatar> {
  var _isRecording = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        setState(() {
          _isRecording = !_isRecording;
        });
      },
      child: Container(
        //这是带圆角的图片
        margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/xiaoheizi.jpg"), fit: BoxFit.fill),
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
        ),
        width: 35.0,
        height: 35.0,
      ),
    );
  }

  DecoratedBox buildDecoratedBox() {
    return DecoratedBox(
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        border: Border.all(width: 2.0, color: Colors.greenAccent),
      ),
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Container(
          width: 30.0,
          height: 30.0,
          color: Colors.blue,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey,
              shape: _isRecording ? BoxShape.rectangle : BoxShape.circle,
              borderRadius:
                  _isRecording ? const BorderRadius.all(Radius.circular(8.0)) : null,
            ),
            child: Image.asset(
              "images/xiaoheizi.jpg", //arrow_icon
//                width: 30.0,
//                height: 30.0,
            ),
          ),
        ),
      ),
    );
  }
}
