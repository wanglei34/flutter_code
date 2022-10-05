import 'dart:html';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpPage extends StatefulWidget {
  const HttpPage({Key? key}) : super(key: key);

  @override
  State<HttpPage> createState() => _HttpPageState();
}

class _HttpPageState extends State<HttpPage> {
  @override
  void initState() {
    super.initState();
    _httpGet();
  }

  void _httpGet() async {
    // 创建网络调用示例
    var client = http.Client();

    // 构造 URI
    var uri = Uri.parse("https://localhost:8080");

    // 设置 user-agent 为 "Custom-UA"，随后立即发出请求
    http.Response response =
        await client.get(uri, headers: {"user-agent": "Custom-UA"});

    // 打印请求结果
    if (response.statusCode == HttpStatus.ok) {
      print(response.body);
    } else {
      print("Error: ${response.statusCode}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
