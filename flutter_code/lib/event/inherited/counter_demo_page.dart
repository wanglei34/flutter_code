import 'package:flutter/material.dart';

import 'counter_container.dart';
import 'counter_widget.dart';

class CounterDemoPage extends StatefulWidget {
  const CounterDemoPage({Key? key}) : super(key: key);

  @override
  State<CounterDemoPage> createState() => CounterDemoPageState();
}

class CounterDemoPageState extends State<CounterDemoPage> {
  int count = 100;

  void _addCounter() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('使用InheritedWidget组件'),
      ),
      // body: CounterContainer(
      //   count: 100,
      //   child: CouterWidget(),
      // ),
      body: CounterContainer(
        model: this,
        increment: _addCounter,
        child: CounterWidget(),
      ),
    );
  }
}
