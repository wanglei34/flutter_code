import 'package:flutter/material.dart';

class DialogDemo extends StatefulWidget {
  const DialogDemo({Key? key}) : super(key: key);

  @override
  State createState() => _DialogDemoState();
}

class _DialogDemoState extends State<DialogDemo> {
  _alertDialog() async {
    var result = await showDialog(
        barrierDismissible: false, //点击灰色背景的时候是否消失弹出框
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('提示信息'),
            content: const Text('确定要删除吗'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.pop(context, 'cancel');
                },
                child: const Text('取消'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context, 'ok');
                },
                child: const Text('确定'),
              )
            ],
          );
        });
    print(result);
  }

  _simpleDialog() async {
    var result = await showDialog(
        barrierDismissible: false, //点击灰色背景的时候是否消失弹出框
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: const Text('选择内容'),
            children: <Widget>[
              SimpleDialogOption(
                child: const Text('Option A'),
                onPressed: () {
                  Navigator.pop(context, 'A');
                },
              ),
              const Divider(),
              SimpleDialogOption(
                child: const Text('Option B'),
                onPressed: () {
                  Navigator.pop(context, 'B');
                },
              ),
              const Divider(),
              SimpleDialogOption(
                child: const Text('Option C'),
                onPressed: () {
                  Navigator.pop(context, 'C');
                },
              ),
              const Divider(),
            ],
          );
        });
    print(result);
  }

  _modelBottomSheet() async {
    var result = await showModalBottomSheet(
        context: context,
        builder: (context) {
          return SizedBox(
            height: 220,
            child: Column(
              children: <Widget>[
                ListTile(
                  title: const Text('分享 A'),
                  onTap: () {
                    Navigator.pop(context, '分享A');
                  },
                ),
                const Divider(),
                ListTile(
                  title: const Text('分享 B'),
                  onTap: () {
                    Navigator.pop(context, '分享B');
                  },
                ),
                const Divider(),
                ListTile(
                  title: const Text('分享 C'),
                  onTap: () {
                    Navigator.pop(context, '分享C');
                  },
                ),
              ],
            ),
          );
        });
    print(result);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('对话框'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Wrap(
              spacing: 10,
              children: [
                ElevatedButton(
                  onPressed: () async {
                    await _alertDialog();
                  },
                  child: const Text('alert dialog'),
                ),
                ElevatedButton(
                  onPressed: () async {
                    await _simpleDialog();
                  },
                  child: const Text('simple dialog'),
                ),
                ElevatedButton(
                  onPressed: () async {
                    await _modelBottomSheet();
                  },
                  child: const Text('model bottom sheet'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
