import 'package:flutter/material.dart';

import 'custom_event.dart';

class EventbusSecondPage extends StatelessWidget {
  const EventbusSecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Eventbus Second Page')),
      ),
      body: ElevatedButton(
          child: const Text('EventBus'),
          // 触发 CustomEvent 事件
          onPressed: () => eventBus.fire(CustomEvent("hello"))),
    );
  }
}
