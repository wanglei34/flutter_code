import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';

class HttpClientPage extends StatefulWidget {
  const HttpClientPage({Key? key}) : super(key: key);

  @override
  State<HttpClientPage> createState() => _HttpClientPageState();
}

class _HttpClientPageState extends State<HttpClientPage> {
  @override
  void initState() {
    super.initState();
    _getHttp();
  }

  void _getHttp() async {
    // 创建网络调用示例
    var httpClient = HttpClient();
    // 设置通用行为
    httpClient.idleTimeout = Duration(seconds: 5);

    // 构造 URI，设置请求头、请求体
    var uri = Uri.parse("http://localhost:8080");
    var request = await httpClient.getUrl(uri);
    request.headers.add("user-agent", "Custom-UA");

    // 发起请求，等待响应
    var response = await request.close();

    // 收到响应，打印结果
    if (response.statusCode == HttpStatus.ok) {
      print(await response.transform(utf8.decoder).join());
    } else {
      print('Error: \nHttp status ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
