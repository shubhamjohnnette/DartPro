// Declare an integer variable age and assign your age.

// Print "I am X years old" using string interpolation.

import 'dart:io';

int age = 30;
String name = "shubham";
String? nickNmae;
final DateTime now = DateTime.now();
const double gravity = 9.8;

void main() {
  // print("I am $age year old");
  // nickNmae = "Shubham Pandey";
  // print("My nickname is $nickNmae");
  // print("The length of the string is ${name.length}");
  // print(name.toUpperCase());

  //  Tking input from user

  print("Enter your name ");
  String? name = stdin.readLineSync();
  print("Enter your age ");
  String? ageInput = stdin.readLineSync();
  int age = int.parse(ageInput!);
  print("my name is $name and I am $age years old");
  print("Average marks: ${calculateAverage()}");
}

double calculateAverage() {
  print("Enter marks for three subjects:");
  double marks1 = stdin.readDoubleSync()!;
  double marks2 = stdin.readDoubleSync()!;
  double marks3 = stdin.readDoubleSync()!;
  return (marks1 + marks2 + marks3) / 3;
}

// Here, we added a custom method readDoubleSync() to the String class.
extension on Stdin {
  readDoubleSync() {
    String? input = readLineSync();
    if (input != null) {
      return double.parse(input);
    } else {
      throw FormatException("Invalid input");
    }
  }
}

// You can add extensions to almost any class in Dart
// An extension is a way to "extend" existing classes (built-in or user-defined) with new methods, getters, or setters—without modifying the original class. This works for:

// Built-in classes like String, int, List, Map, etc.

// Your own custom classes.

// Even third-party library classes.

// Extensions don’t change the original class; they just add extra methods.

// You can use them to create helper utilities that feel like native methods.

// They work anywhere: built-in types, your own classes, or imported libraries.
