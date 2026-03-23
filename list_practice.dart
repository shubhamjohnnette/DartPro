List<String> names = ["Alice", "Bob", "Charlie"];
// Simple List (Literal Syntax)
List<int> numbers = [1, 2, 3, 4, 5];
// or using type inference:
var num = [1, 2, 3];
// Empty List
List<int> numb = [];

var numbe = <int>[];

// Fixed-Length List

// Length is fixed, cannot add/remove elements.

var number = List.filled(5, 0);

// Growable List (Dynamic Size)

var numbersGrowable = List.empty(growable: true);

// List.generate()

// Useful when values follow a pattern.

var numbersgenerate = List.generate(5, (index) => index * 2);

// From Another List
var list1 = [1, 2, 3];
var list2 = List.from(list1);

// Using Spread Operator (...)

var list3 = [1, 2];
var list4 = [...list1, 3, 4];

// Conditional List (Very Powerful 🔥)

bool addExtra = true;

var numbersConditional = [1, 2, if (addExtra) 3];

// Loop inside List (Collection for)
var numbersLoop = [for (int i = 0; i < 5; i++) i];

const numbersConstant = [1, 2, 3]; //Cannot modify later:

void main() {
  numbersGrowable.add(1);
  numbersGrowable.add(2);
  // Accessing list elements
  print(names[0]); // Output: Alice
  print(numbers[2]); // Output: 3

  // Adding elements to a list
  names.add("David");
  numbers.add(6);

  // Iterating through a list
  for (String name in names) {
    print(name);
  }

  for (int number in numbers) {
    print(number);
  }

  // List properties and methods
  print(names.length); // Output: 4
  print(numbers.contains(3)); // Output: true
}
