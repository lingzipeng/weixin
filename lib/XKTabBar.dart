import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weixin/api/api.dart';
import 'package:weixin/widget/contact_people.dart';
import './dio/request.dart';
import 'dio/httpUtil.dart';

class XKTabBar extends StatefulWidget {
  final String title;

  const XKTabBar({required this.title, Key? key}) : super(key: key);

  @override
  _XKTabBar createState() => _XKTabBar();
}

class _XKTabBar extends State<XKTabBar> {
  void sendPostRequest() async {
    // 构建请求体
    var response = await HttpUtil().get("http://www.baidu.com");
    var data = response.toString();
    print('--------:$data');
  }

  // void sendGetRequest() async {
  //   try {
  //     // 发送GET请求
  //     Response response =
  //         await dio.get('http://127.0.0.1:4523/m1/3535579-0-default/test/a');

  //     responseData = response.data.toString();

  //     print('成功: $responseData');
  //   } catch (e) {
  //     print('失败: $e');
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          backgroundColor: const Color.fromARGB(255, 234, 230, 230),
        ),
        body: const Text('data')
        // Container(
        //     alignment: const Alignment(0.0, 0.0),
        //     height: 100.0,
        //     child: ElevatedButton(
        //       onPressed: () {
        //         // sendGetRequest();
        //         sendPostRequest();
        //       },
        //       child: const Text("老铁666"),
        //     ))
        );
  }
}
