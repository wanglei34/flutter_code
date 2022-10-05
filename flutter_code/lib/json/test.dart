import 'dart:convert';

import 'package:flutter_code/json/student.dart';

void _loadJson() {
  String jsonString = """
  {
    "id":"123",
    "name":" 张三 ",
    "score" : 95,
    "teachers": [
       {
         "name": " 李四 ",
         "age" : 40
       },
       {
         "name": " 王五 ",
         "age" : 45
       }
    ]
  }
  """;

  // json串转字典
  final jsonRes = json.decode(jsonString);

  // 引用student的工厂方法
  Student student = Student.fromJson(jsonRes);
  print(student.name);
  print(student.teachers[0].name);
  print(student.teachers[1].age);
}

void main() {
  _loadJson();
}
