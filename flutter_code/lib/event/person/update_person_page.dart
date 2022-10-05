import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_code/event/person/person_event.dart';

class UpdatePersonPage extends StatefulWidget {
  const UpdatePersonPage({Key? key}) : super(key: key);

  @override
  State<UpdatePersonPage> createState() => _UpdatePersonPageState();
}

class _UpdatePersonPageState extends State<UpdatePersonPage> {
  String avatar = 'https://avatars.githubusercontent.com/u/59445871?v=4';
  String name = 'poicc';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('修改个人信息'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            ListTile(
              // 左侧leading图标区，用一个Container来绘制一个圆形，文字为标题的第一个字母
              leading: Container(
                alignment: Alignment.center,
                width: 60,
                height: 60,
                //装饰形状、背景色、阴影等
                decoration: const BoxDecoration(
                  shape: BoxShape.circle, //Container为圆形
                  color: Colors.orange,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(
                        0.0,
                        3.0, //阴影y轴偏移量
                      ),
                      blurRadius: 10, //阴影模糊程度
                      spreadRadius: 2, //阴影扩散程度
                    ),
                  ],
                ),
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                    avatar,
                  ),
                ),
              ),
              selected: false,
              contentPadding: const EdgeInsets.all(5),
              trailing: const Icon(Icons.arrow_forward_ios),
              dense: false,
              onTap: () {
                setState(() {
                  avatar = avatar ==
                          'https://avatars.githubusercontent.com/u/59445871?v=4'
                      ? 'https://images.pexels.com/photos/13326533/pexels-photo-13326533.jpeg?auto=compress&cs=tinysrgb&w=800&lazy=load'
                      : 'https://avatars.githubusercontent.com/u/59445871?v=4';
                });
              },
            ),
            const Divider(),
            ListTile(
              title: Text(
                name,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.indigo,
                ),
              ),
              selected: false,
              contentPadding: const EdgeInsets.all(5),
              trailing: const Icon(Icons.arrow_forward_ios),
              dense: false,
              onTap: () {
                showCupertinoDialog(
                    context: context,
                    builder: (context) {
                      return CupertinoAlertDialog(
                        title: const Text('请输入需要修改名称'),
                        content: Card(
                          elevation: 0.0,
                          child: Column(
                            children: <Widget>[
                              TextField(
                                decoration: InputDecoration(
                                  hintText: '请输入...',
                                  filled: true,
                                  fillColor: Colors.grey.shade50,
                                ),
                                onChanged: (v) {
                                  setState(() {
                                    name = v;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                        actions: <Widget>[
                          CupertinoDialogAction(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('取消'),
                          ),
                          CupertinoDialogAction(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('确定'),
                          ),
                        ],
                      );
                    });
              },
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  eventBus.fire(PersonEvent(avatar, name));
                  Navigator.pop(context);
                },
                child: const Text('完成'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
