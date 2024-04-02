import 'package:flutter/material.dart';

import '../other/line.dart';

class ContactPeople extends StatefulWidget {
  final String titlesList;
  const ContactPeople(this.titlesList, {Key? key}) : super(key: key);


  @override
  State<ContactPeople> createState() => _ContactPeopleState();
}

class _ContactPeopleState extends State<ContactPeople> {

  // List<Map<String, dynamic>> dataList = [
  //   {
  //     'title': '刘备',
  //     'image': 'images/刘备.png',
  //   },
  //   {
  //     'title': '刘备',
  //     'image': 'images/刘备.png',
  //   },
  //   {
  //     'title': '刘备',
  //     'image': 'images/刘备.png',
  //   },
  // ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50.0,
          color: Colors.white,
          child: ListTile(
            title: Text(widget.titlesList),
            leading: Image.asset(
              "images/${widget.titlesList}.png",
              width: 35.0,
              height: 35.0,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const line(),
      ],
    );
  }
}
