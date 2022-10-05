import 'package:flutter/material.dart';

class WrapDemo extends StatelessWidget {
  const WrapDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Wrap(
        spacing: 10,
        runSpacing: 10,
        alignment: WrapAlignment.start,
        children: const <Widget>[
          MyButton("第 1 集"),
          MyButton("第 2 集"),
          MyButton("第 3 集"),
          MyButton("第 4 集"),
          MyButton("第 5 集"),
          MyButton("第 6 集"),
          MyButton("第 7 集"),
          MyButton("第 8 集"),
          MyButton("第 9 集"),
          MyButton("第 10 集"),
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton(this.text, {Key? key}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: Colors.green, // 背景色
          onPrimary: Colors.white // 文字色
          ),
      onPressed: () {},
      child: Text(text),
    );
  }
}
