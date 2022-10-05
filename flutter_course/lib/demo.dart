import 'package:flutter/material.dart';

class Demo extends StatelessWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 350,
            width: double.infinity,
            foregroundDecoration:
                BoxDecoration(color: Colors.black.withAlpha(400)),
            child: Image.network(
              'http://wangleis.oss-cn-beijing.aliyuncs.com/pic/b870cb59-7b58-40cb-b66a-259076dbd7e7.jpg',
              fit: BoxFit.fitWidth,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 360),
            child: Center(
              child: Column(
                children: const [
                  Text(
                    "孤独的流浪诗",
                    style: TextStyle(fontFamily: '孤独的流浪诗', fontSize: 28),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "平方星辰体",
                    style: TextStyle(fontFamily: '平方星辰体', fontSize: 28),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "平方雨桐体",
                    style: TextStyle(fontFamily: '平方雨桐体', fontSize: 28),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
