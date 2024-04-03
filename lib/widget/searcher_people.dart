import 'package:flutter/material.dart';

import '../XKTabBar.dart';
import '../other/line.dart';

class SearcherPeople extends StatefulWidget {
  final String titlesList;
  final String words;
  const SearcherPeople(this.titlesList, this.words, {Key? key}) : super(key: key);


  @override
  State<SearcherPeople> createState() => _ContactPeopleState();
}

class _ContactPeopleState extends State<SearcherPeople> {
  //文本颜色
  final TextStyle _normalStyle = const TextStyle(
    fontSize: 16,
    color: Colors.black,
  );

  final TextStyle _heighlightStyle = const TextStyle(
    fontSize: 16,
    color: Colors.green,
  );


  Widget _title(String name){
    List<TextSpan> spans = [];
    List<String> strs = name.split(widget.words);
    for(int i = 0;i<strs.length;i++){
      String str = strs[i];
      if(str == '' && i<strs.length-1){
        spans.add(TextSpan(text:widget.words,style: _heighlightStyle));
      } else {
        spans.add(TextSpan(text: str, style: _normalStyle));
        if(i<strs.length-1){
          spans.add(TextSpan(text:widget.words,style: _heighlightStyle));
        }
      }
    }
    return RichText(text: TextSpan(children: spans));
  }



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50.0,
          color: Colors.white,
          child: ListTile(
            title: _title(widget.titlesList),
            leading: Image.asset(
              "images/${widget.titlesList}.png",
              width: 35.0,
              height: 35.0,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const line(),
      ],
    );
  }
}
