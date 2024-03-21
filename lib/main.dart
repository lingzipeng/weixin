import 'package:flutter/material.dart';
import 'XKTabBar.dart';
import 'Home.dart';
import 'ContactView.dart';
import 'FindView.dart';
import 'MineView.dart';

void main() => runApp(myApp());

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "title",
      theme: ThemeData(
        primaryColor: const Color.fromARGB(
            0xff, 0x1d, 0xc0, 0x63), //Color.fromARGB(0xff, 0xf2, 0xf2, 0xf2),
      ),
      home: Center(
        child: RandomWords(),
      ),
    );
  }
}

class MAppBar extends StatefulWidget implements PreferredSizeWidget {
  MAppBar({required this.child}) : assert(child != null);
  final Widget child;
  @override
  Size get preferredSize {
    return const Size.fromHeight(51.0);
  }

  @override
  State createState() {
    return MAppBarState();
  }
}

class MAppBarState extends State<MAppBar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: widget.child,
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  createState() => RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  static double itemwidth = 25.0;
  final List<BottomNavigationBarItem> listSet = [
    BottomNavigationBarItem(
      icon: Image.asset("assets/tabbar_mainframe@3x.png",
          width: itemwidth, height: itemwidth),
      activeIcon: Image.asset("assets/tabbar_mainframeHL@3x.png",
          width: itemwidth, height: itemwidth),
      label: "微信",
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        "assets/tabbar_contacts@3x.png",
        width: itemwidth,
        height: itemwidth,
      ),
      activeIcon: Image.asset(
        "assets/tabbar_contactsHL@3x.png",
        width: itemwidth,
        height: itemwidth,
      ),
      label: "通讯录",
    ),
    BottomNavigationBarItem(
      icon: Image.asset("assets/tabbar_discover@3x.png",
          width: itemwidth, height: itemwidth),
      activeIcon: Image.asset("assets/tabbar_discoverHL@3x.png",
          width: itemwidth, height: itemwidth),
      label: "发现",
    ),
    BottomNavigationBarItem(
      icon: Image.asset("assets/tabbar_me@3x.png",
          width: itemwidth, height: itemwidth),
      activeIcon: Image.asset("assets/tabbar_meHL@3x.png",
          width: itemwidth, height: itemwidth),
      label: "我",
    ),
  ];

  final List<StatefulWidget> vcSet = [
    HomeView(),
    ContactView(),
    FindView(),
    MineView()
  ];
  int _sindex = 0;
  String _title = "微信";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        platform: TargetPlatform.iOS,
        primaryColor: Colors.grey[100],
        canvasColor: const Color(0xFFFFFFFF),
      ),
      home: buildHome(),
    );
  }

  Scaffold buildHome() {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(0xff, 0xf2, 0xf2, 0xf2),
        elevation: 0.0,
        title: Text(_title),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.list),
            onPressed: () {
              print("点击了-index");
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: const Color.fromARGB(0xff, 0x26, 0x73, 0x25),
        items: listSet,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          String title = "";
          switch (index) {
            case 0:
              title = "微信";
              break;
            case 1:
              title = "通讯录";
              break;
            case 2:
              title = "发现";
              break;
            case 3:
              title = "";
              break;
          }
          setState(() {
            _sindex = index;
            _title = title;
          });
        },
        currentIndex: _sindex,
      ),
      body: vcSet[_sindex],
    );
  }
}