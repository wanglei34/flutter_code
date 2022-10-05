import 'package:flutter/material.dart';
import 'package:flutter_code/event/notification/custom_notification.dart';

class NotificationDemoPage extends StatefulWidget {
  const NotificationDemoPage({Key? key}) : super(key: key);

  @override
  State<NotificationDemoPage> createState() => _NotificationDemoPageState();
}

class _NotificationDemoPageState extends State<NotificationDemoPage> {
  String _msg = 'hello';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notification 练习'),
      ),
      body: Center(
        child: NotificationListener<CustomNotification>(
          onNotification: (notification) {
            setState(() {
              _msg += '${notification.msg},';
            });
            return true;
          },
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text(_msg), const CustomChild()],
            ),
          ),
        ),
      ),
    );
  }
}
