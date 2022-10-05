import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({Key? key}) : super(key: key);

  @override
  _FormWidgetState createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  late String username = '';
  int sex = 1;
  String info = '';

  List hobby = [
    {'checked': true, 'title': '吃饭'},
    {'checked': false, 'title': '睡觉'},
    {'checked': true, 'title': '写代码'},
  ];

  List<Widget> _getHobby() {
    List<Widget> tempList = [];

    for (var i = 0; i < hobby.length; i++) {
      tempList.add(Row(
        children: <Widget>[
          Text(hobby[i]['title'] + ':'),
          Checkbox(
            value: hobby[i]['checked'],
            onChanged: (value) {
              setState(() {
                hobby[i]['checked'] = value;
              });
            },
          ),
        ],
      ));
    }
    return tempList;
  }

  void _setChanged(value) {
    setState(() {
      sex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('学员信息登记系统'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[
            TextField(
              decoration: const InputDecoration(hintText: '输入用户信息'),
              onChanged: (value) {
                setState(() {
                  username = value;
                });
              },
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                const Text('男'),
                Radio(value: 1, groupValue: sex, onChanged: _setChanged),
                const SizedBox(
                  width: 20,
                ),
                const Text('女'),
                Radio(value: 2, groupValue: sex, onChanged: _setChanged)
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: _getHobby(),
            ),
            TextField(
              maxLines: 4,
              decoration: const InputDecoration(
                  hintText: '描述信息', border: OutlineInputBorder()),
              onChanged: (value) {
                setState(() {
                  info = value;
                });
              },
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              height: 40,
              child: ElevatedButton(
                child: const Text('提交信息'),
                onPressed: () {
                  print(sex);
                  print(username);
                  print(hobby);
                },
              ),
            ),
            Text('$username,$sex,$hobby'),
          ],
        ),
      ),
    );
  }
}
