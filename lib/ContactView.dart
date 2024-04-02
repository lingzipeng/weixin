import 'package:flutter/material.dart';
import 'package:pinyin/pinyin.dart';
import 'package:weixin/widget/IndexBar.dart';
import 'package:weixin/widget/contact_people.dart';

import 'other/line.dart';

class ContactView extends StatefulWidget {
  const ContactView({super.key});

  @override
  _ContactViewState createState() => _ContactViewState();
}

class _ContactViewState extends State {
  //微信索引条
  List<String> side = [
    '↑',
    '✫',
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    'O',
    'P',
    'Q',
    'R',
    'S',
    'T',
    'U',
    'V',
    'W',
    'X',
    'Y',
    'Z',
    '#'
  ];

  List<Widget> words = [];

  List<String> head = ['新的朋友', '群聊', '标签', '公众号'];
  List<String> titlesList = [
    '刘备',
    '孙权',
    "诸葛亮",
    "赵云",
    "周瑜",
    "鲁肃",
    "司马懿",
    "袁绍",
    "华佗",
    "华雄",
    "公孙瓒",
    "刘表",
    "典韦",
    "黄忠",
    "刘禅",
    "徐庶",
    "郭嘉",
    "荀攸",
    '曹操',
  ];

  // final Map _groupOffsetMap = {
  //   // side[0]:0.0,
  // };
  late final Map<String, double> _groupOffsetMap;

  //各个字母联系人的高度
  final Map<String, double> _groupHeight = {
    'A': 0.0,
    'B': 0.0,
    'C': 0.0,
    'D': 0.0,
    'E': 0.0,
    'F': 0.0,
    'G': 0.0,
    'H': 0.0,
    'I': 0.0,
    'J': 0.0,
    'K': 0.0,
    'L': 0.0,
    'M': 0.0,
    'N': 0.0,
    'O': 0.0,
    'P': 0.0,
    'Q': 0.0,
    'R': 0.0,
    'S': 0.0,
    'T': 0.0,
    'U': 0.0,
    'V': 0.0,
    'W': 0.0,
    'X': 0.0,
    'Y': 0.0,
    'Z': 0.0,
    '#': 0.0,
  };

  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();

    titlesList.sort((String a, String b) {
      String aPinyin = PinyinHelper.getFirstWordPinyin(a).toUpperCase();
      String bPinyin = PinyinHelper.getFirstWordPinyin(b).toUpperCase();
      return aPinyin.compareTo(bPinyin); // 按照拼音首字母顺序比较
    });

    for (int i = 0; i < side.length; i++) {
      words.add(Expanded(
          child: Text(side[i],
              style: const TextStyle(fontSize: 10, color: Colors.grey))));
    }

    _groupOffsetMap = {
      side[0]: 0.0,
      side[1]: 0.0,
    };
    double groupOffset = 50.5 * head.length;
    for (int i = 0; i < titlesList.length; i++) {
      // if (i == 2) {
      //   _groupOffsetMap.addAll({side[i]: groupOffset});
      //   //增加高度
      //   //groupOffset = groupOffset
      // }
      //
      if (i == 0) {
        _groupOffsetMap.addAll({'C': groupOffset});
      }
      if( i >= 1){
        if (PinyinHelper.getFirstWordPinyin(titlesList[i-1])
            .substring(0, 1)
            .toUpperCase() ==
            PinyinHelper.getFirstWordPinyin(titlesList[i])
                .substring(0, 1)
                .toUpperCase()) {
          groupOffset = groupOffset + 50.5;
        } else {
          groupOffset = groupOffset + 80.5;
          _groupOffsetMap.addAll({
            PinyinHelper.getFirstWordPinyin(titlesList[i])
                .substring(0, 1)
                .toUpperCase(): groupOffset
          });
        }
      }

      // }
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(0xff, 0xf2, 0xf2, 0xf2),
          elevation: 0.0,
          title: const Text("通讯录"),
        ),
        body: Stack(
          children: [
            Container(
              child: ListView.builder(
                  controller: _scrollController,
                  itemCount: titlesList.length + head.length,
                  itemBuilder: (BuildContext context, int index) {
                    if (index < head.length) {
                      return ContactPeople(head[index]);
                    }
                    if (index == head.length) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 30.0,
                            child: Text('  C'),
                          ),
                          ContactPeople(titlesList[index - 4]),
                        ],
                      );
                    }
                    if (PinyinHelper.getFirstWordPinyin(titlesList[index - 4])
                            .substring(0, 1)
                            .toUpperCase() ==
                        PinyinHelper.getFirstWordPinyin(titlesList[index - 5])
                            .substring(0, 1)
                            .toUpperCase()) {
                      //长度加一
                      // _groupHeight[
                      //     PinyinHelper.getFirstWordPinyin(titlesList[index - 4])
                      //         .substring(0, 1)
                      //         .toUpperCase()] = 50.5 +
                      //     _groupHeight[PinyinHelper.getFirstWordPinyin(
                      //             titlesList[index - 4])
                      //         .substring(0, 1)
                      //         .toUpperCase()]!;
                      return ContactPeople(titlesList[index - 4]);
                    } else {
                      // 长度加一
                      // _groupHeight[
                      //     PinyinHelper.getFirstWordPinyin(titlesList[index - 4])
                      //         .substring(0, 1)
                      //         .toUpperCase()] = 50.5 +
                      //     _groupHeight[PinyinHelper.getFirstWordPinyin(
                      //             titlesList[index - 4])
                      //         .substring(0, 1)
                      //         .toUpperCase()]!;
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 30.0,
                            child: Text(
                                '  ${PinyinHelper.getFirstWordPinyin(titlesList[index - 4]).substring(0, 1).toUpperCase()}'),
                          ),
                          ContactPeople(titlesList[index - 4]),
                        ],
                      );
                    }
                  }),
            ),
            IndexBar(
              words,
              side,
              indexBarCallBack: (String str) {
                print('========${_groupOffsetMap[str]}====$str');
                _scrollController.animateTo(_groupOffsetMap[str]!,
                    duration: const Duration(microseconds: 100),
                    curve: Curves.easeIn);
              },
            ),
            //indexBarCallBack: (String str) {
          ],
        ));
  }
}
