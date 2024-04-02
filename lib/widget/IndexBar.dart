import 'package:flutter/material.dart';
class IndexBar extends StatefulWidget {
  final void Function(String str) indexBarCallBack;
  final List<Widget> words;
  final List<String> side;

  const IndexBar(this.words, this.side, {Key? key, required this.indexBarCallBack}) : super(key: key);

  @override
  State<IndexBar> createState() => _IndexBarState();
}

class _IndexBarState extends State<IndexBar> {


  double screenHeight(BuildContext context) {
    // 使用MediaQuery获取屏幕的高度
    return MediaQuery.of(context).size.height;
  }

  String getIndex(BuildContext context, Offset globalPosition){
    RenderObject? renderObject = context.findRenderObject();
    RenderBox? box;
    if (renderObject != null && renderObject is RenderBox) {
      box = renderObject as RenderBox; // 类型转换
    }
    double? y = box?.globalToLocal(globalPosition).dy;
    //计算高度单位
    var itemHeight = screenHeight(context) / 2 / widget.side.length;

    //定位
    // int index = ((y! - screenHeight(context) / 8) ~/ itemHeight)
    //     .clamp(0, widget.side.length - 1);
    int index = (y! ~/ itemHeight)
        .clamp(0, widget.side.length - 1);
    // print(side[index+2]);
    return widget.side[index];
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
        right: 0.0,
        top: screenHeight(context) / 8,
        height: screenHeight(context) / 2,
        width: 30,
        child: GestureDetector(
          onVerticalDragUpdate: (DragUpdateDetails details) {
            widget.indexBarCallBack(
                getIndex(context, details.globalPosition));
          },
          onVerticalDragDown: (DragDownDetails details) {
            widget.indexBarCallBack(getIndex(context, details.globalPosition));
          },
          child: Container(
            // color: Colors.grey,
            child: Column(
              children: widget.words,
            ),
          ),
        ));
  }
}
