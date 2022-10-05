import 'package:flutter/material.dart';
import 'package:flutter_course/Pritice/first_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    num a = ModalRoute.of(context)!.settings.arguments as num;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Two'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('传过来的是：${a.a}和${a.b}，计算结果是：${a.a + a.b}。'),
            ElevatedButton(
                onPressed: () => Navigator.pop(context, '${a.a + a.b}'),
                child: Text('代参数${a.a + a.b}返回！！'))
          ],
        ),
      ),
    );
  }
}
