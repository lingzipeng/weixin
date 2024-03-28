import 'package:flutter/material.dart';

import 'other/line.dart';

class ContactView extends StatefulWidget {
  const ContactView({super.key});

  @override
  _ContactViewState createState() => _ContactViewState();
}

class _ContactViewState extends State {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(0xff, 0xf2, 0xf2, 0xf2),
          elevation: 0.0,
          title: Text("通讯录"),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              color: Colors.grey[200],
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                height: 50.0,
                color: Colors.white,
                child: ListTile(
                  title: const Text("新的朋友"),
                  //图片调节为圆角
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(5), // 设置圆角半径
                    child: Image.asset(
                      'images/plugins_FriendNotify@2x.png',
                      width: 24, // 设置图片宽度
                      height: 24, // 设置图片高度
                    ),
                  ),
                ),
              ),
            ),
            const line(),
            Container(
              height: 50.0,
              color: Colors.white,
              child: ListTile(
                title: const Text("群聊"),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(5), // 设置圆角半径
                  child: Image.asset(
                    'images/add_friend_icon_addgroup@2x.png',
                    width: 24, // 设置图片宽度
                    height: 24, // 设置图片高度
                  ),
                ),
              ),
            ),
            const line(),
            Container(
              height: 50.0,
              color: Colors.white,
              child: ListTile(
                title: const Text("标签"),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(5), // 设置圆角半径
                  child: Image.asset(
                    'images/Contact_icon_ContactTag@2x.png',
                    width: 24, // 设置图片宽度
                    height: 24, // 设置图片高度
                  ),
                ),
              ),
            ),
            const line(),
            Container(
              height: 50.0,
              color: Colors.white,
              child: ListTile(
                title: const Text("公众号"),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(5), // 设置圆角半径
                  child: Image.asset(
                    'images/add_friend_icon_offical@2x.png',
                    width: 24, // 设置图片宽度
                    height: 24, // 设置图片高度
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.grey[200],
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                height: 50.0,
                color: Colors.white,
                child: ListTile(
                  title: const Text("赵云"),
                  leading: Image.asset(
                    "images/赵云.png",
                    width: 35.0,
                    height: 35.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const line(),
            Container(
              height: 50.0,
              color: Colors.white,
              child: ListTile(
                title: const Text("吕布"),
                leading: Image.asset(
                  "images/吕布.png",
                  width: 35.0,
                  height: 35.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const line(),
            Container(
              height: 50.0,
              color: Colors.white,
              child: ListTile(
                title: const Text("张飞"),
                leading: Image.asset(
                  "images/张飞.png",
                  width: 35.0,
                  height: 35.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const line(),
            Container(
              height: 50.0,
              color: Colors.white,
              child: ListTile(
                title: const Text("关羽"),
                leading: Image.asset(
                  "images/关羽.png",
                  width: 35.0,
                  height: 35.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const line(),
            Container(
              height: 50.0,
              color: Colors.white,
              child: ListTile(
                title: const Text("刘备"),
                leading: Image.asset(
                  "images/刘备.png",
                  width: 35.0,
                  height: 35.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const line(),
            Container(
              height: 50.0,
              color: Colors.white,
              child: ListTile(
                title: const Text("曹操"),
                leading: Image.asset(
                  "images/曹操.png",
                  width: 35.0,
                  height: 35.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const line(),
            Container(
              height: 50.0,
              color: Colors.white,
              child: ListTile(
                title: const Text("孙权"),
                leading: Image.asset(
                  "images/孙权.png",
                  width: 35.0,
                  height: 35.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const line(),
            Container(
              height: 50.0,
              color: Colors.white,
              child: ListTile(
                title: const Text("诸葛亮"),
                leading: Image.asset(
                  "images/诸葛亮.png",
                  width: 35.0,
                  height: 35.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const line(),
            Container(
              height: 50.0,
              color: Colors.white,
              child: ListTile(
                title: const Text("周瑜"),
                leading: Image.asset(
                  "images/周瑜.png",
                  width: 35.0,
                  height: 35.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const line(),
            Container(
              height: 50.0,
              color: Colors.white,
              child: ListTile(
                title: const Text("鲁肃"),
                leading: Image.asset(
                  "images/鲁肃.png",
                  width: 35.0,
                  height: 35.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const line(),
            Container(
              height: 50.0,
              color: Colors.white,
              child: ListTile(
                title: const Text("司马懿"),
                leading: Image.asset(
                  "images/司马懿.png",
                  width: 35.0,
                  height: 35.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const line(),
            Container(
              height: 50.0,
              color: Colors.white,
              child: ListTile(
                title: const Text("袁绍"),
                leading: Image.asset(
                  "images/袁绍.png",
                  width: 35.0,
                  height: 35.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const line(),
            Container(
              height: 50.0,
              color: Colors.white,
              child: ListTile(
                title: const Text("华佗"),
                leading: Image.asset(
                  "images/华佗.png",
                  width: 35.0,
                  height: 35.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const line(),
            Container(
              height: 50.0,
              color: Colors.white,
              child: ListTile(
                title: const Text("华雄"),
                leading: Image.asset(
                  "images/华雄.png",
                  width: 35.0,
                  height: 35.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const line(),
            Container(
              height: 50.0,
              color: Colors.white,
              child: ListTile(
                title: const Text("公孙瓒"),
                leading: Image.asset(
                  "images/公孙瓒.png",
                  width: 35.0,
                  height: 35.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const line(),
            Container(
              height: 50.0,
              color: Colors.white,
              child: ListTile(
                title: const Text("刘表"),
                leading: Image.asset(
                  "images/刘表.png",
                  width: 35.0,
                  height: 35.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const line(),
            Container(
              height: 50.0,
              color: Colors.white,
              child: ListTile(
                title: const Text("典韦"),
                leading: Image.asset(
                  "images/典韦.png",
                  width: 35.0,
                  height: 35.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const line(),
            Container(
              height: 50.0,
              color: Colors.white,
              child: ListTile(
                title: const Text("黄忠"),
                leading: Image.asset(
                  "images/黄忠.png",
                  width: 35.0,
                  height: 35.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const line(),
            Container(
              height: 50.0,
              color: Colors.white,
              child: ListTile(
                title: const Text("刘禅"),
                leading: Image.asset(
                  "images/刘禅.png",
                  width: 35.0,
                  height: 35.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const line(),
            Container(
              height: 50.0,
              color: Colors.white,
              child: ListTile(
                title: const Text("徐庶"),
                leading: Image.asset(
                  "images/徐庶.png",
                  width: 35.0,
                  height: 35.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const line(),
            Container(
              height: 50.0,
              color: Colors.white,
              child: ListTile(
                title: const Text("郭嘉"),
                leading: Image.asset(
                  "images/郭嘉.png",
                  width: 35.0,
                  height: 35.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const line(),
            Container(
              height: 50.0,
              color: Colors.white,
              child: ListTile(
                title: const Text("荀攸"),
                leading: Image.asset(
                  "images/荀攸.png",
                  width: 35.0,
                  height: 35.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ));
  }
}
