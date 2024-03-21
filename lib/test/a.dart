import 'package:flutter/material.dart';
//测试
class a extends StatelessWidget {
  const a({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: const Alignment(0.0,0.0),
        child: Stack(
          children: [
            Positioned(child: Container(
              color: const Color(0xD0B2C1CC),
              child: const Text("老铁666"),
            ))
          ],
        )
    );
  }
}
