import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()? onAdd;
  const MyButton({Key? key, this.onAdd}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onAdd,
      child: const Text('点击+1'),
    );
  }
}
