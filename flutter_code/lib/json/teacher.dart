class Teacher {
  int? age;
  String? name;

  Teacher({this.age, this.name});

  factory Teacher.fromJson(Map<String, dynamic> map) {
    return Teacher(age: map['age'], name: map['name']);
  }
}
