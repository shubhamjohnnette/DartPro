# A class is a blueprint for creating objects. 

**_Basic Syntax_**

`class ClassName {`
  `// variables (properties)`

  `// methods (functions)`
`}`

`class Person {`
  `String name = "John";`
  `int age = 25;`

  `void greet() {`
    `print("Hello, my name is $name");`
  `}`
`}`

## Using the Class 

`void main() {`
  `var p = Person();`

  `print(p.name);`
  `p.greet();`
`}`

## 2. How to Write a Constructor

**_Basic Constructor_**

`class Person {`
  `String name;`

  `Person(this.name); // constructor`
`}`

`void main() {`
  `var p = Person("Shubham");`
  `print(p.name);`
`}`

## Class + Constructor

class Person {
  String name;
  int age;

  // constructor
  Person(this.name, this.age);

  `void greet() {`
    `print("Hi, I am $name and I am $age years` `old");`
  `}`
`}`

`void main() {`
  `var p = Person("John", 25);`
  `p.greet();`
`}`

## 4. Named Parameters Constructor (Most Used in Flutter)

`class Person {`
  `String name;`
  `int age;`

  `Person({required this.name, required this.age});`
`}`

_Usage:_
`Person(name: "John", age: 25);`

## 5. Default Values in Constructor

`class Person {`
  `String name;`
  `int age;`

  `Person({this.name = "Guest", this.age = 0});`
`}`

## 6. Optional Positional Constructor 

`class Person {`
  `String name;`
  `int age;`

  `Person(this.name, [this.age = 0]);`
`}`

## 7. Named Constructor

`class Person {`
  `String name;`

  `Person(this.name);`

  `Person.guest() : name = "Guest";`
`}`

## 8. Constructor with Logic 

`class Person {`
  `String name;`

  `Person(String name) {`
    `this.name = name.toUpperCase();`
  `}`
`}`

## 9. With final Variables

`class Person {`
  `final String name;`

  `Person(this.name);`
`}`

## 10. Flutter Real Example

`class MyButton extends StatelessWidget {`
  `final String title;`
  `final void Function() onTap;`

  `const MyButton({`
    `required this.title,`
    `required this.onTap,`
  `});`
`}`

- Class → blueprint
- Constructor → initializes object
- this.name → assigns value

**_“A class defines a blueprint for objects, and a constructor is a special method inside the class used to initialize its properties when an object is created.”_**
