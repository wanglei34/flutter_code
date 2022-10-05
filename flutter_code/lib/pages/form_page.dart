import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  const FormPage({Key? key, required this.arguments}) : super(key: key);
  final Map arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Page'),
      ),
      body: Center(
        child: Text(
            "表单页面接收到参数:${arguments['id']?.toString()},${arguments['name']}"),
      ),
    );
  }
}
