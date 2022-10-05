import 'package:flutter/material.dart';
import 'package:flutter_code/class1/my_button.dart';

class MyText extends StatefulWidget {
  const MyText({Key? key}) : super(key: key);

  @override
  State<MyText> createState() => _MyTextState();
}

class _MyTextState extends State<MyText> {
  late int _count;
  @override
  void initState() {
    super.initState();
    _count = 0;
  }

  void _incrementCounter() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20,
      children: [
        Text(
          '$_count',
          style: Theme.of(context).textTheme.headline4,
        ),
        MyButton(onAdd: _incrementCounter), // 将点击事件传递给⾃定义按钮的onAdd属性
      ],
    );
  }
}
