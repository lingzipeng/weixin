import 'package:flutter/material.dart';
import 'XKTabBar.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: _buildListView(),
    );
  }

  ListView _buildListView() {
    return ListView(
      children: <Widget>[
        ListTile(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return XKTabBar();
            }));
          },
          leading: Image.asset(
            "images/刘备.png",
            width: 40.0,
            height: 40.0,
            fit: BoxFit.cover,
          ),
          title: const Text("刘备"),
          subtitle: const Text("我本汉室宗亲，备乃中山靖王之后。"),
          trailing: const Text("9:00"),
        ),
        ListTile(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return XKTabBar();
            }));
          },
          leading: Image.asset(
            "images/曹操.png",
            width: 40.0,
            height: 40.0,
            fit: BoxFit.cover,
          ),
          title: const Text("曹操"),
          subtitle: const Text("我不笑别人，单笑周瑜无谋，诸葛亮少智！"),
          trailing: const Text("8:45"),
        ),
        ListTile(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return XKTabBar();
            }));
          },
          leading: Image.asset(
            "images/孙权.png",
            width: 40.0,
            height: 40.0,
            fit: BoxFit.cover,
          ),
          title: const Text("孙权"),
          subtitle: const Text("哦？卿言何人？"),
          trailing: const Text("6:00"),
        ),
        ListTile(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return XKTabBar();
            }));
          },
          leading: Image.asset(
            "images/关羽.png",
            width: 40.0,
            height: 40.0,
            fit: BoxFit.cover,
          ),
          title: const Text("关羽"),
          subtitle: const Text("吾观颜良，如插标卖首耳！"),
          trailing: const Text("昨天"),
        ),
        ListTile(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return XKTabBar();
            }));
          },
          leading: Image.asset(
            "images/张飞.png",
            width: 40.0,
            height: 40.0,
            fit: BoxFit.cover,
          ),
          title: const Text("张飞"),
          subtitle: const Text("三姓家奴休走，燕人张飞在此！"),
          trailing: const Text("昨天"),
        ),
        ListTile(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return XKTabBar();
            }));
          },
          leading: Image.asset(
            "images/吕布.png",
            width: 40.0,
            height: 40.0,
            fit: BoxFit.cover,
          ),
          title: const Text("吕布"),
          subtitle: const Text("大丈夫生居天地之间，岂能郁郁久居人下。"),
          trailing: const Text("上个月"),
        ),
        ListTile(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return XKTabBar();
            }));
          },
          leading: Image.asset(
            "images/赵云.png",
            width: 40.0,
            height: 40.0,
            fit: BoxFit.cover,
          ),
          title: const Text("赵云"),
          subtitle: const Text("【微信红包，大吉大利】"),
          trailing: const Text("上俩个月"),
        ),
      ],
    );
  }
}
