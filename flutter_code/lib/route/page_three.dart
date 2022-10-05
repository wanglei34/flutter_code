import 'package:flutter/material.dart';

class PageThree extends StatelessWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String msg = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: const Text('PageThree'),
      ),
      body: Row(
        children: [
          Text('PageThree, $msg'),
          ElevatedButton(
            onPressed: () => Navigator.pop(context, 'hello world'),
            child: const Text('返回page two'),
          ),
        ],
      ),
    );
  }
}
