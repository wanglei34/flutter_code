import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_code/feign/json.dart';

class HttpFeignDemo extends StatefulWidget {
  const HttpFeignDemo({Key? key}) : super(key: key);

  @override
  _HttpFeignDemoState createState() => _HttpFeignDemoState();
}

class _HttpFeignDemoState extends State<HttpFeignDemo> {
  Share? share;
  String? nickName;
  String? avatar;

  @override
  void initState() {
    super.initState();
    _getData();
  }

  _getData() async {
    var response = await Dio().get('http://10.62.61.43:8082/share/1');
    print(response.data);
    print(response.statusCode);

    Map<String, dynamic> map = Map<String, dynamic>.from(response.data);
    print(map['data']);
    // Map<String, dynamic> data = map['data'];

    Json1 j1 = Json1.fromJson(map['data']);
    share = j1.share;
    nickName = j1.nickName;
    avatar = j1.avatar;
    print(share?.title);
    print(nickName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('请求数据demo'),
      ),
      body: Column(
        children: [Text('$nickName')],
      ),
    );
  }
}
