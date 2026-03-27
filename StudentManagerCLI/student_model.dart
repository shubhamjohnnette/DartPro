class Student {
  String name;
  int? age;
  bool? passed;
  Student(this.name, this.age, this.passed);

  @override
  String toString() {
    if (passed != null) {
      return "User name is $name and age is $age and he/she is ${passed! ? "passed" : "failed"}";
    } else {
      return "User name is $name and age is $age and he/she is ";
    }
  }
}
