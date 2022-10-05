import 'package:flutter/material.dart';

class CustomNotification extends Notification {
  final String msg;
  CustomNotification(this.msg);
}

class CustomChild extends StatelessWidget {
  const CustomChild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => CustomNotification('Hello').dispatch(context),
      child: const Text('Notification 测试'),
    );
  }
}
