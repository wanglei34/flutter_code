import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  late num data = num(0, 0);
  String? add = '';
  @override
  Widget build(BuildContext context) {
    String msg = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: const Text('FirstPage'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(msg),
            TextField(
              onChanged: (value) {
                setState(() {
                  data.a = int.parse(value);
                });
              },
              decoration: const InputDecoration(
                  hintText: '请输入a',
                  hintStyle: TextStyle(color: Colors.grey),
                  hintMaxLines: 1),
            ),
            TextField(
              onChanged: (value) {
                setState(() {
                  data.b = int.parse(value);
                });
              },
              decoration: const InputDecoration(
                  hintText: '请输入b',
                  hintStyle: TextStyle(color: Colors.grey),
                  hintMaxLines: 1),
            ),
            ElevatedButton(
                onPressed: () =>
                    Navigator.pushNamed(context, 'second-page', arguments: data)
                        .then((msg) {
                      setState(() {
                        print('计算结果：${msg.toString()}');
                        add = msg.toString();
                      });
                    }),
                child: Text('跳转到第二个界面对${data.a}和${data.b}进行计算')),
            Text('计算结果：$add'),
          ],
        ),
      ),
    );
  }
}

class num {
  int a;
  int b;

  num(this.a, this.b);
}
