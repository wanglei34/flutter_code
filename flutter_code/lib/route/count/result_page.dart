import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  int one = 22;
  int two = 23;
  int res = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('结果页面'),
      ),
      body: Column(
        children: [
          Text('计算$one + $two'),
          res == 0 ? const Text('') : Text('求和=$res'),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, 'page_count',
                arguments: {'one': one, 'two': two}).then((info) {
              setState(() {
                print(info);
                res = info as int;
              });
            }),
            child: const Text('跳转求和'),
          ),
        ],
      ),
    );
  }
}
