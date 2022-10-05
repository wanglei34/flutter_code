import 'dart:html';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DioPage extends StatefulWidget {
  const DioPage({Key? key}) : super(key: key);

  @override
  State<DioPage> createState() => _DioPageState();
}

class _DioPageState extends State<DioPage> {
  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    Dio dio = Dio();
    dio.interceptors.add(
      InterceptorsWrapper(onRequest: (options, handler) {
        print('before request');
        // 为每个请求头都增加 user-agent
        options.headers["user-agent"] = "Custom-UA";
        options.headers["token"] = "123";
        // 检查是否有 token，没有则直接报错
        if (options.headers['token'] == null) {
          return handler.reject(DioError(requestOptions: options));
        }
        // 检查缓存是否有数据
        if (options.uri == Uri.parse('http://xxx.com/file1')) {
          return handler.reject(DioError(requestOptions: options));
        }
        // 放行请求
        return handler.next(options);
      }, onResponse: (response, handler) {
        print('after request');
        // 返回数据
        return handler.next(response);
      }, onError: (DioError e, handler) {
        // 请求出错
        print('request error');
        return handler.next(e);
      }),
    );
    var response = await dio.get('http://localhost:8080');
    if (response.statusCode == HttpStatus.ok) {
      print(response.data);
    } else {
      print("Error: ${response.statusCode}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
