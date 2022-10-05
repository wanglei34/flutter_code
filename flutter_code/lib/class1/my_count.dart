import 'package:flutter/material.dart';

class MyCount extends StatefulWidget {
  const MyCount({Key? key}) : super(key: key);

  @override
  State<MyCount> createState() => _MyCountState();
}

class _MyCountState extends State<MyCount> {
  late int _count;

  @override
  void initState() {
    super.initState();
    _count = 0;
  }

  void _add() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Text(
            _count.toString(),
            style: const TextStyle(
              fontSize: 24,
            ),
          ),
          ElevatedButton(
            onPressed: _add,
            child: const Text('点击+1'),
          ),
        ],
      ),
    );
  }
}
