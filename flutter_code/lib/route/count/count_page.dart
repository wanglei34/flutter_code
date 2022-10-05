import 'package:flutter/material.dart';

class CountAddPage extends StatelessWidget {
  const CountAddPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map msg = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(
        title: const Text('PageThree'),
      ),
      body: Row(
        children: [
          Text('${msg['one']} + ${msg['two']} = ${msg['one'] + msg['two']}'),
          ElevatedButton(
            onPressed: () {
              int res = msg['one'] + msg['two'];
              Navigator.pop(context, res);
            },
            child: const Text('返回'),
          ),
        ],
      ),
    );
  }
}
