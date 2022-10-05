import 'package:flutter/material.dart';

class SharePage extends StatelessWidget {
  const SharePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Center(
          child: Text("主页"),
        ),
        backgroundColor: Colors.brown.shade300,
      ),
    );
  }
}
