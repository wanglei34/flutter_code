import 'dart:async';

import 'package:flutter/material.dart';

class MyDialog extends Dialog {
  String title;
  String content;
  MyDialog({Key? key, this.title = '定时', this.content = '提示'})
      : super(key: key);

  _showTime(context) {
    var timer;
    timer = Timer.periodic(const Duration(milliseconds: 5000), (t) {
      print('关闭');
      Navigator.pop(context);
      timer.cancel();
    });
  }

  @override
  Widget build(BuildContext context) {
    _showTime(context);
    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: Container(
          width: 300,
          height: 230,
          color: Colors.deepPurple.shade50,
          child: Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(10),
                color: Colors.deepPurple.shade100,
                child: Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.center,
                      child: Text(title),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        child: const Icon(Icons.close),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    )
                  ],
                ),
              ),
              const Divider(),
              Container(
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                child: ListTile(
                  leading: const FlutterLogo(),
                  title: Text(
                    content,
                    textAlign: TextAlign.left,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
