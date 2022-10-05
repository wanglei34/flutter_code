class Teacher {
  String? name;
  int? age;

  Teacher({
    this.name,
    this.age,
  });

  factory Teacher.fromJson(Map<String, dynamic> map) {
    return Teacher(
      name: map['name'],
      age: map['age'],
    );
  }
}
