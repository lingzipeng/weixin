import 'package:flutter/material.dart';

class line extends StatefulWidget {
  const line({super.key});

  @override
  State<line> createState() => _lineState();
}

class _lineState extends State<line> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.5,
      color: Colors.grey[200],
      child: Row(
        children: [
          Container(
            width: 60,
            color: Colors.white,
          ),
          Container(
            color: const Color.fromARGB(0x7d, 0xd9, 0xd9, 0xd9),
          )
        ],
      ),
      // padding: EdgeInsets.all(100),
    );
  }
}
