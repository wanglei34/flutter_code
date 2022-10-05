import 'package:flutter/material.dart';

class CustomNotification extends Notification {
  CustomNotification(this.msg);
  final String msg;
}

// 抽离出一个子 Widget 用来发通知
class CustomChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      // 按钮点击时分发通知
      onPressed: () => CustomNotification("Hello").dispatch(context),
      child: const Text("Notification 测试"),
    );
  }
}
