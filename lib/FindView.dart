import 'package:flutter/material.dart';
import 'WCAvatar.dart';
import 'TimeLine/TimeLine.dart';

class FindView extends StatefulWidget {
  const FindView({super.key});

  @override
  _FindViewState createState() => _FindViewState();
}

class _FindViewState extends State {
  @override
  Container _FindNormalCell(String iconName, String contentName,
      String timelinecontentName, Color color, double topY, double lineH) {
    return Container(
      padding: EdgeInsets.only(top: topY),
      color: const Color.fromARGB(0xff, 0xf2, 0xf2, 0xf2),
      // height: 54.0 + topY + lineH ,
      child: Column(
        children: <Widget>[
          Container(
              height: 54.0 + lineH,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  leftrow(iconName, contentName),
                  Container(
                    width: 80,
                    height: 100,
                    color: Colors.transparent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        timelinecontentName.isNotEmpty
                            ? WCAvatar()
                            : Container(),
                        Image.asset(
                          "images/arrowOnclick_ico@2x.png", //arrow_icon
                          width: 20.0,
                          height: 20.0,
                        ),
                        Container(
                          width: 5.0,
                        )
                      ],
                    ),
                  ),
                ],
              )),
          SizedBox(
            height: lineH,
            child: Row(
              children: <Widget>[
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
          ),
        ],
      ),
    );
  }

  Container _FindTimeLineCell(String iconName, String contentName, Color color,
      double topY, double lineH) {
    return _FindNormalCell(
        iconName, contentName, 'images/xiaoheizi.jpg', color, topY, lineH);
  }

  Container _FindCell(String iconName, String contentName, Color color,
      double topY, double lineH) {
    return _FindNormalCell(iconName, contentName, '', color, topY, lineH);
  }

  Row leftrow(String iconName, String contentName) {
    return Row(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(width: 17),
          Image.asset(
            iconName,
            height: 22.0,
            width: 22,
            // color: color,
          ),
          Container(width: 17),
          Text(
            contentName,
            style: const TextStyle(
              fontSize: 17.0,
              fontWeight: FontWeight.w400,
            ),
          )
        ]);
  }

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Color.fromARGB(0xff, 0xf2, 0xf2, 0xf2),
        body: ListView(
          children: <Widget>[
            GestureDetector(
              onTap: () {
                print("点朋友圈Cell");
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TimeLinePage(),
                    ));
              },
              child: _FindTimeLineCell(
                  "images/ff_IconShowAlbum@3x.png", "朋友圈", Colors.red, 0.0, 0),
            ),
            GestureDetector(
              onTap: () {
                print("点了扫一扫");
              },
              child: _FindCell(
                  "images/ff_IconQRCode@3x.png", "扫一扫", Colors.red, 9.0, 0.5),
            ),
            _FindCell("images/ff_IconShake@3x.png", "摇一摇", Colors.red, 0, 0),
            _FindCell(
                "images/ff_IconBrowse1@3x.png", "看一看", Colors.red, 9.0, 0.5),
            _FindCell("images/ff_IconSearch1@3x.png", "搜一搜", Colors.red, 0, 0),
            _FindCell(
                "images/ff_IconNearby@3x.png", "附近的人", Colors.red, 9, 0.5),
            _FindCell("images/ff_IconBottle@3x.png", "漂流瓶", Colors.red, 0, 0.5),
            _FindCell("images/ff_IconQRCode@3x.png", "附近的餐厅", Colors.red, 0, 0),
            _FindCell("images/ff_IconQRCode@3x.png", "购物", Colors.red, 9, 0.5),
            _FindCell("images/GameCenterH5GameMenuBtn@2x.png", "游戏", Colors.red,
                0, 0),
            _FindCell("images/PaidDetail_MiniProgram@3x.png", "小程序", Colors.red,
                9, 0),
          ],
        ));
  }
}
