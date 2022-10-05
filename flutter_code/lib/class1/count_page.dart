import 'package:flutter/material.dart';
// import 'package:number/my_count.dart';
import 'package:flutter_code/class1/my_text.dart';

class CountPage extends StatelessWidget {
  const CountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('计数器'),
      ),
      body: const MyText(),
    );
  }
}
