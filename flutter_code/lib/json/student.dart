import 'package:flutter_code/json/teacher.dart';

class Student {
  String? id;
  String? name;
  int? score;
  List<Teacher> teachers;

  Student({this.id, this.name, this.score, required this.teachers});

  factory Student.fromJson(Map<String, dynamic> map) {
    var list = map['teachers'] as List;
    return Student(
        id: map['id'],
        name: map['name'],
        score: map['score'],
        teachers: list.map((i) => Teacher.fromJson(i)).toList());
  }
}
