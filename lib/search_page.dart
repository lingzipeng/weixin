import 'package:flutter/material.dart';
import 'package:weixin/widget/searcher_people.dart';

import 'Home.dart';


class SearcherBar extends StatefulWidget {
  const SearcherBar({super.key});

  @override
  State<SearcherBar> createState() => _SearcherBarState();
}

class _SearcherBarState extends State<SearcherBar> {
  final TextEditingController _controller = TextEditingController();

  //搜索得到的数组
  List<String> models = [];

  //所有联系人数据
  List<String> allModels = [
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
  //输入的字符
  String words = '';
  //搜索展示的内容
  void searcherData(String text) {
    models.clear();
    words=text;
    if (text.isNotEmpty) {
      for (int i = 0; i < allModels.length; i++) {
        String name = allModels[i];
        if (name.contains(text)) {
          models.add(name);
        }
      }
    }
    setState(() {});
  }

  //控制取消符号是否显示
  bool _showClear = false;


  void _onChanged(String text) {
    searcherData(text);
    setState(() {
      _showClear = text.isNotEmpty;
    });
    // if (text.isNotEmpty) {
    //   setState(() {
    //     _showClear = true;
    //   });
    // } else {
    //   setState(() {
    //     _showClear = false;
    //   });
    // }
  }

  double screenWith(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 900.0,
        color: Colors.grey[200],
        child: Column(
          children: [
            const SizedBox(
              height: 40.0,
            ),
            //搜索框
            Container(
              height: 44.0,
              color: Colors.grey[200],
              child: Row(
                children: [
                  Container(
                      width: screenWith(context) - 40,
                      height: 34.0,
                      margin: const EdgeInsets.only(left: 5, right: 5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        // 右边留有一些空间
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Image(
                              image:
                                  AssetImage('images/Fav_Search_Icon@3x.png'),
                              width: 20,
                            ),
                            Expanded(
                              flex: 1,
                              child: TextField(
                                controller: _controller,
                                onChanged: _onChanged,
                                cursorColor: Colors.green,
                                style: const TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300,
                                ),
                                decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.only(
                                        left: 5.0, right: 5.0, bottom: 10.0),
                                    border: InputBorder.none,
                                    hintText: '搜索'),
                              ),
                            ),
                            _showClear
                                ? GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _controller.clear();
                                        _onChanged('');
                                      });
                                    },
                                    child: const Icon(Icons.cancel,
                                        color: Colors.grey),
                                  )
                                : Container(),
                          ],
                        ),
                      )),

                  GestureDetector(
                    onTap: () {
                      //返回首页
                      Navigator.pop(context);
                    },
                    child: const Text('取消'),
                  ),
                ],
              ),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: models.length,
                    itemBuilder: (BuildContext context, int index) {
                      return SearcherPeople(models[index],words);
                    }))
          ],
        ),
      ),
    );
  }
}
