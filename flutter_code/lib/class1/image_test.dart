import 'package:flutter/material.dart';

class ImageTest extends StatefulWidget {
  const ImageTest({Key? key}) : super(key: key);

  @override
  _ImageTestState createState() => _ImageTestState();
}

class _ImageTestState extends State<ImageTest> {
  final List _list = [
    'https://www.itying.com/images/flutter/1.png',
    'https://www.itying.com/images/flutter/2.png',
    'https://www.itying.com/images/flutter/3.png',
    'https://www.itying.com/images/flutter/4.png',
    'https://www.itying.com/images/flutter/5.png',
    'https://www.itying.com/images/flutter/6.png',
  ];

  int _num = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('切换随机图片'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: 150.0,
            height: 150.0,
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(100),
              image: DecorationImage(
                  image: NetworkImage(_list[_num]), fit: BoxFit.cover),
            ),
          ),
          // RaisedButton(
          //   textColor: Colors.white,
          //   color: Colors.blue,
          //   elevation: 10,
          //   onPressed: () {
          //     setState(() {
          //       _num = Random().nextInt(6);
          //     });
          //   },
          //   child: const Text('切换图片'),
          // ),
        ],
      ),
    );
  }
}
