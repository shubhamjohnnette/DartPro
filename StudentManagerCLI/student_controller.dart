import 'dart:io';
import 'student_repo.dart';

class StudentController {
  StudentRepo studentRepo = StudentRepo();
  String? name;
  int? age;
  bool? passed;

  void addStudent() {
    print("Enter Student name");
    name = getStudentName();
    if (name!.trim().isEmpty) {
      print("Ending program...");
      return;
    }
    print("Enter Student age");
    age = stdin.readIntSync();
    print("Enter Student status( passed or failed)");
    passed = stdin.readBoolSync();

    studentRepo.addStudent(name!, age, passed);
  }

  void removeStudent() {
    print("Name of student you want to delete ?");
    name = stdin.readLineSync();
    if (getStudentName().trim().isEmpty) {
      print("Name is empty ending ...");
      return;
    }
    studentRepo.removeStudent(name!);
  }

  void updateStrudents() {
    print("Enter Student name you want to update");
    name = getStudentName();

    print("Enter new name");
    String newname = getStudentName();

    print("Enter Student age");
    age = stdin.readIntSync();
    print("Enter Student status( passed or failed)");
    passed = stdin.readBoolSync();

    studentRepo.updateStudent(
      name!,
      newName: newname,
      newAge: age,
      passed: passed!,
    );
  }

  void showStudent() {
    name = getStudentName();
    if (name!.trim().isEmpty) {
      studentRepo.showStudent(name!);
    }
  }

  void showAllStudent() {
    studentRepo.student.forEach((s) {
      print(s.toString());
    });
  }

  void addDummyData() {
    studentRepo.addDummyStudent();
  }

  String getStudentName() {
    String? sname = stdin.readLineSync();
    if (sname == null) {
      sname = "";
    } else {
      if (name != null) {
        if (name!.trim().isEmpty) {
          while (name!.trim().isEmpty) {
            print("Name cannot be empty!");
            print("Try Again ");
            sname = stdin.readLineSync();
          }
        }
      }
    }
    return sname!;
  }
}

extension on Stdin {
  readBoolSync() {
    String? input = readLineSync();
    if (input != null) {
      return bool.parse(input);
    } else {
      throw FormatException("Invalid input");
    }
  }
}

extension on Stdin {
  readIntSync() {
    String? input = readLineSync();
    if (input != null) {
      return int.parse(input);
    } else {
      throw FormatException("Invalid input");
    }
  }
}
