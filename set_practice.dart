// Literal Syntax (Most Common)
import 'dart:collection';

Set<String> names = {"Alice", "Bob", "Charlie"};
// or using type inference:
var name = {"Alice", "Bob", "Charlie"};
// Empty Set
Set<int> number = {};
var num = <int>{};

// Using Set() Constructor
var numbers = Set<int>();

// From List (Remove Duplicates 🔥)
var list = [1, 2, 2, 3];
var numb = Set.from(list);

// Using Spread Operator (...)
var set1 = {1, 2};
var set2 = {...set1, 3, 4};

// Conditional Set (if inside collection)
bool addExtra = true;

var numbe = {1, 2, if (addExtra) 3};

// Loop inside Set (collection for)
var numbersLoop = {for (int i = 0; i < 5; i++) i};

// Const Set (Immutable)
const numbersConst = {1, 2, 3};
// LinkedHashSet (Ordered Set)
var numbersLinkedHashset = LinkedHashSet<int>();

void main() {
  numbersLinkedHashset.add(3);
  numbersLinkedHashset.add(1);
  numbersLinkedHashset.add(2);
  // Adding elements to a set
  numbers.add(1);
  numbers.add(2);
  numbers.add(3);

  // Accessing set elements (Note: Sets are unordered, so we can't access by index)
  print(names.contains("Alice")); // Output: true
  print(numbers.contains(2)); // Output: true

  // Iterating through a set
  for (String name in names) {
    print(name);
  }
}
