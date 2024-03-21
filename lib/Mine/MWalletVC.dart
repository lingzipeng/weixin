import 'package:flutter/material.dart';

class MWalletVC extends StatefulWidget {
  const MWalletVC({super.key});

  @override
  _MWalletVCState createState() => _MWalletVCState();
}

class _MWalletVCState extends State<MWalletVC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("钱包"),
        backgroundColor: Colors.grey[500],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 130.0,
            color: Colors.grey[500],
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //首付款
                  children: <Widget>[
                    Icon(Icons.check_box),
                    Text(" "),
                    Text("首付款"),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //零钱
                  children: <Widget>[
                    Icon(Icons.monetization_on),
                    Text(" "),
                    Text("零钱"),
                    Text("200.56"),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //银行卡
                  children: <Widget>[
                    Icon(Icons.credit_card),
                    Text(" "),
                    Text("银行卡"),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 40.0,
            color: Colors.grey[100],
            padding: const EdgeInsets.only(left: 15.0, top: 10.0),
            child: const Text("腾讯服务"),
          ),
          const SizedBox(
            height: 90.0,
            child: Row(
              //信用卡还款,手机充值，理财通
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.credit_card),
                    Text("信用卡还款"),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.phone_iphone),
                    Text("手机充值"),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.fiber_smart_record),
                    Text("理财通"),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 90.0,
            child: Row(
              //生活缴费，Q币，城市服务
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.edit_location),
                    Text(
                      "生活缴费",
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.spa),
                    Text(
                      "Q币充值",
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.location_city),
                    Text("城市服务"),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 90.0,
            child: Row(
              //游戏微商店，腾讯公益，保险服务
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.local_pizza),
                    Text("游戏微商店"),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.favorite),
                    Text("腾讯公益"),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.beenhere),
                    Text("保险服务"),
                  ],
                )
              ],
            ),
          ),
          Container(
            height: 40.0,
            color: Colors.grey[100],
            padding: const EdgeInsets.only(left: 15.0, top: 10.0),
            child: const Text("限时推广"),
          ),
          Container(
            height: 90.0,
            padding: const EdgeInsets.only(left: 40.0),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.sim_card),
                    Text("腾讯王卡"),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
