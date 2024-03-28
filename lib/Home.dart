import 'package:flutter/material.dart';
import 'XKTabBar.dart';
import 'other/line.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        actions: [
          const SizedBox(
            height: 33,
            width: 33,
            child: Image(
              image: AssetImage('images/Fav_Search_Icon@3x.png'),
            ),
          ),
          const SizedBox(
            width: 12.0,
          ),
          Container(
            height: 28,
            width: 28,
            margin: const EdgeInsets.only(right: 10),
            child: const Image(
              image: AssetImage('images/Fav_List_Add_Icon@3x.png'),
            ),
          )
        ],
        backgroundColor: const Color.fromARGB(0xff, 0xf2, 0xf2, 0xf2),
        elevation: 0.0,
        title: const Text("微信"),
        centerTitle: true,
      ),
      body: _buildListView(),
    );
  }

  ListView _buildListView() {
    return ListView(
      children: <Widget>[
        ListTile(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return const XKTabBar(title: '刘备');
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
        const line(),
        ListTile(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return const XKTabBar(title: '曹操');
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
        const line(),
        ListTile(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return const XKTabBar(title: '孙权');
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
        const line(),
        ListTile(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return const XKTabBar(title: '关羽');
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
        const line(),
        ListTile(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return const XKTabBar(title: '张飞');
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
        const line(),
        ListTile(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return const XKTabBar(title: '吕布');
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
          trailing: const Text("上一个月"),
        ),
        const line(),
        ListTile(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return const XKTabBar(title: '赵云');
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
