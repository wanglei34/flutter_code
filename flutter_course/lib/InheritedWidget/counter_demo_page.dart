import 'package:flutter/material.dart';
import 'package:flutter_course/InheritedWidget/counter_container.dart';

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
        title: const Center(child: Text('使用InheritedWidget组件')),
      ),
      body: CounterContainer(
        model: this,
        increment: _addCounter,
        child: CounterWidget(),
      ),
    );
  }
}
