import 'package:flutter/material.dart';

import 'test/a.dart';

class XKTabBar extends StatefulWidget {
  final String title;

  const XKTabBar({required this.title, Key? key}) : super(key: key);

  @override
  _XKTabBar createState() => _XKTabBar();
}

class _XKTabBar extends State<XKTabBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: const Color.fromARGB(255, 234, 230, 230),
      ),
      body: const Center(
        child: a(),
      ),
    );
  }
}
