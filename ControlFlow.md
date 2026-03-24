# 1. Conditional Statements

**_if / else_**

- Used to execute code based on a condition.

- `void main() {
- int age = 18;

- if (age >= 18) {
- print("Adult");
- } else {
- print("Minor");
- }
- }`

**_else if_**

- For multiple conditions:

- `void main() {
- int marks = 75;

- if (marks >= 90) {
- print("A");
- } else if (marks >= 70) {
- print("B");
- } else {
    print("C");
- }
- }`

**_switch_**

- Used when checking one variable against multiple values

- `void main() {
- int day = 2;

- switch (day) {
- case 1:
- print("Monday");
- break;
- case 2:
- print("Tuesday");
- break;
- default:
- print("Other day");
- }
- }`

## 2. Loops

**_for loop_**

- Used when you know how many times to run.

- `void main() {
  for (int i = 0; i < 5; i++) {
    print(i);
  }
- }`

**_while loop_**

- `void main() {
  int i = 0;

  while (i < 3) {
    print(i);
    i++;
  }
- }`

**_do-while loop_**

- Runs at least once, even if condition is false.

- `void main() {
  int i = 5;

  do {
    print(i);
    i++;
  } while (i < 3);
- }`

**_for-in loop_**

- Used to iterate over collections (List, Set, etc.)
- ` void main() {
  var numbers = [1, 2, 3];

  for (var n in numbers) {
    print(n);
  }
- }`

## 3. break and continue

**_break_**

- Stops the loop immediately.

- `void main() {
  for (int i = 0; i < 5; i++) {
    if (i == 3) break;
    print(i);
  }
- }`

**_continue_**

- Skips current iteration.

- `void main() {
  for (int i = 0; i < 5; i++) {
    if (i == 2) continue;
    print(i);
  }
- }`

## Ternary Operator

- The ternary operator in Dart is a short way to write an if-else condition in one line.

- `condition ? value_if_true : value_if_false;`

- “If condition is true → first value, else → second value”

- `void main() {
  int age = 18;

  String result = age >= 18 ? "Adult" : "Minor";
  print(result);
- }`

**_Using in Print_**

- `void main() {
  int a = 10, b = 20;

  print(a > b ? "A is greater" : "B is greater");
- }`

**_Nested Ternary (⚠️ Use Carefully)_**

- `int marks = 85;

- String grade = marks >= 90
    ? "A"
    : marks >= 70
        ? "B"
        : "C";

- print(grade);`

**_With Null Safety (?? vs ?:)_**

- `String? name;`
- `print(name != null ? name : "Guest");`

**_Better__**

- `print(name ?? "Guest");`

- `Text(isLoggedIn ? "Welcome" : "Please Login");`

- // ❌ Avoid this
- `name != null ? name : "Guest";`

- // ✅ Use this

- `name ?? "Guest";`
