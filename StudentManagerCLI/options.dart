import 'dart:io';
import 'student_controller.dart';

class Options {
  StudentController studentController = StudentController();
  void chooseOption() {
    printColoredTerminal(31, "[....Choose a option....]\n");
    printColoredTerminal(32, "1 - Add Student");
    printColoredTerminal(33, "2 - Update Student");
    printColoredTerminal(34, "3 - Show all Student");
    printColoredTerminal(35, "4 - Show Student");
    printColoredTerminal(31, "5 - Delete Student");

    studentController.addDummyData();
    int opt = stdin.readIntSync();
    proceedOption(opt);
  }

  void proceedOption(int opt) {
    switch (opt) {
      case 1:
        studentController.addStudent();

      case 2:
        studentController.updateStrudents();

      case 3:
        studentController.showAllStudent();

      case 4:
        studentController.showStudent();

      case 5:
        studentController.removeStudent();
    }
  }

  void printColoredTerminal(int colorcode, String statement) {
    print("\x1B[${colorcode}m${statement}\x1B[0m");
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
