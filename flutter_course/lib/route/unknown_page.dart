import 'package:flutter/material.dart';

class UnknownPage extends StatelessWidget {
  const UnknownPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('未知路由'),
      ),
      body: const Center(
        child: Text('未知路由'),
      ),
    );
  }
}
