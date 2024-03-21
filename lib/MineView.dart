import 'package:flutter/material.dart';
import 'Mine/MInfoVC.dart';
import 'Mine/MWalletVC.dart';

class MineView extends StatefulWidget {
  @override
  _MineViewState createState() => _MineViewState();
}

class _MineViewState extends State {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: ListView(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(top: 20.0),
          color: Colors.grey[200],
          child: Container(
            height: 80.0,
            color: Colors.white,
            child: ListTile(
              leading: Image.asset(
                "images/xiaoheizi.jpg",
                width: 50.0,
                height: 50.0,
              ),
              title: const Text("小黑子"),
              subtitle: const Text("微信号：xiaoheizi"),
              trailing: const Icon(Icons.fullscreen),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const MInfoVC();
                }));
              },
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(top: 20.0),
          color: Colors.grey[200],
          child: Container(
            color: Colors.white,
            height: 50.0,
            child: ListTile(
              leading: Image.asset(
                'images/MyCardPackageIcon@2x.png',
                width: 24, // 设置图片宽度
                height: 24, // 设置图片高度
              ),
              title: const Text("钱包"),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return MWalletVC();
                }));
              },
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(top: 20.0),
          color: Colors.grey[200],
          child: Container(
            color: Colors.white,
            height: 50.0,
            child: ListTile(
              leading: Image.asset(
                'images/MoreMyFavorites@2x.png',
                width: 24, // 设置图片宽度
                height: 24, // 设置图片高度
              ),
              title: const Text("收藏"),
            ),
          ),
        ),
        Container(
          color: Colors.white,
          height: 50.0,
          child: ListTile(
            leading: Image.asset(
              'images/MoreMyAlbum@2x.png',
              width: 24, // 设置图片宽度
              height: 24, // 设置图片高度
            ),
            title: const Text("相册"),
          ),
        ),
        Container(
          color: Colors.white,
          height: 50.0,
          child: ListTile(
            leading: Image.asset(
              'images/Shake_icon_cardPackHL@2x.png',
              width: 24, // 设置图片宽度
              height: 24, // 设置图片高度
            ),
            title: const Text("卡包"),
          ),
        ),
        Container(
          color: Colors.white,
          height: 50.0,
          child: ListTile(
            leading: Image.asset(
              'images/MoreExpressionShops@2x.png',
              width: 24, // 设置图片宽度
              height: 24, // 设置图片高度
            ),
            title: const Text("表情"),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(top: 20.0),
          color: Colors.grey[200],
          child: Container(
            color: Colors.white,
            height: 50.0,
            child: ListTile(
              leading: Image.asset(
              'images/MoreSetting@2x.png',
              width: 24, // 设置图片宽度
              height: 24, // 设置图片高度
            ),
              title: const Text("设置"),
            ),
          ),
        ),
      ],
    ));
  }
}
