import 'package:flutter/material.dart';
import 'package:flutter_code/event/eventbus/custom_event.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: ElevatedButton(
        child: const Text('Event Bus 测试'),
        onPressed: () => eventBus.fire(CustomEvent('hello')),
      ),
    );
  }
}
