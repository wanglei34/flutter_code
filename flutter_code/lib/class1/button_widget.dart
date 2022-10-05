import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final Function()? fun;
  final String? content;
  final ButtonStyle? style;
  const ButtonWidget({
    Key? key,
    this.fun,
    this.content,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: fun, style: style, child: Text('$content'));
  }
}
