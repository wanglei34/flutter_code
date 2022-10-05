import 'package:flutter/material.dart';
import 'package:flutter_course/Notification/custim_notification.dart';

class NotificationDemoPage extends StatefulWidget {
  const NotificationDemoPage({Key? key}) : super(key: key);

  @override
  State<NotificationDemoPage> createState() => _NotificationDemoPageState();
}

class _NotificationDemoPageState extends State<NotificationDemoPage> {
  String _msg = " 通知内容：";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Notification')),
      ),
      body: Center(
        child: NotificationListener<CustomNotification>(
          onNotification: (notification) {
            setState(() {
              _msg += notification.msg + ',';
            });
            return true;
          },
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(_msg),
                CustomChild(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
