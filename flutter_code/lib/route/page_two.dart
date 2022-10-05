import 'package:flutter/material.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  String? _msg = '111';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageTwo'),
      ),
      body: Column(
        children: [
          Text(_msg!),
          const Text('PageTwo'),
          ElevatedButton(
            onPressed: () =>
                Navigator.pushNamed(context, 'page_three', arguments: 'Flutter')
                    .then((info) {
              setState(() {
                _msg = info as String?;
              });
            }),
            child: const Text('跳转page three 并带参'),
          ),
        ],
      ),
    );
  }
}
