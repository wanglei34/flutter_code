import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_course/Eventbus/eventbus_second_page.dart';

import 'custom_event.dart';

class EventbusFirstPage extends StatefulWidget {
  const EventbusFirstPage({Key? key}) : super(key: key);

  @override
  State<EventbusFirstPage> createState() => _EventbusFirstPageState();
}

class _EventbusFirstPageState extends State<EventbusFirstPage> {
  String msg = " 通知内容：";
  late StreamSubscription subscription;
  @override
  initState() {
    subscription = eventBus.on<CustomEvent>().listen((event) {
      setState(() {
        msg += event.msg;
      });
    });
    super.initState();
  }

  @override
  dispose() {
    subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Eventbus'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.send),
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const EventbusSecondPage(),
          ),
        ),
      ),
      body: Text(
        msg,
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }
}
