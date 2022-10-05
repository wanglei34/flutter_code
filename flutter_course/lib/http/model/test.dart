import 'dart:convert';

import 'package:flutter_course/http/model/student.dart';

void _loadStudent() {
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
  final jsonRes = json.decode(jsonString);
  Student student = Student.fromJson(jsonRes);
  print(student.name);
  print(student.teachers[1].name);
}

void main() {
  _loadStudent();
}
