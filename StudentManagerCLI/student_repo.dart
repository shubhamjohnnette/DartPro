import 'student_model.dart';

class StudentRepo {
  List<Map<String, Student>> student = [];

  void addStudent(String name, int? age, bool? passed) {
    student.add({name: Student(name, age, passed)});
    print("$name has been added ");
  }

  void addDummyStudent() {
    // Student s1 = Student("S1", 22, true);
    Student s2 = Student("S2", 21, true);
    Student s3 = Student("S3", 23, true);
    student.add({"s1": Student("S1", 22, true)});
    student.add({"s2": s2});
    student.add({"s3": s3});
  }

  void removeStudent(String name) {
    student.remove(name);
    print("$name has been removed");
  }

  void updateStudent(
    String name, {
    String? newName,
    int? newAge,
    bool passed = true,
  }) {
    for (var studentMap in this.student) {
      if (studentMap.containsKey(name)) {
        var student = studentMap[name]!;
        student.age = newAge ?? student.age;
        print(
          "Student name $name has been updaed to ${newName ?? student.name}, ${newAge ?? student.age} and ${passed ? "passed" : "failed"} ",
        );
        break;
      }
    }
  }

  void showStudent(String name) {
    print(
      this.student
          .firstWhere((studentMap) => studentMap.containsKey(name))
          .toString(),
    );
  }
}
