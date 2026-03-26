# 1. Normal Function (Basic)

`void greet() {`
  `print("Hello");`
`}`

## 2. Function with Return Type

`int add(int a, int b) {`
 `return a + b;`
`}`

## 3. Arrow Function (Short Syntax)

`int add(int a, int b) => a + b;`

## 4. Function with Optional Positional Parameters

`void greet(String name, [String? msg]) {`
 `print("$name: ${msg ?? "Hello"}");`
`}`

## 5. Function with Named Parameters

`void greet({String? name, int? age}) {`
 `print("$name is $age years old");`
`}`

## 6. Required Named Parameters

`void greet({required String name, required int` `age}) {`
  `print("$name is $age years old");`
`}`

## 7. Default Values in Parameters

`void greet({String name = "Guest"}) {`
  `print("Hello $name");`
`}`

## 8. Anonymous Function (No Name)

`var list = [1, 2, 3];`

`list.forEach((item) {`
  `print(item);`
`});`

## 9. Function as Variable

`var add = (int a, int b) {`
  `return a + b;`
`};`
`print(add(2, 3));`

## 10. Higher-Order Function

`void execute(Function action) {`
  `action();`
`}`

`execute(() {`
  `print("Running...");`
`});`

## 11. Returning a Function

`Function multiply(int x) {`
  `return (int y) => x * y;`
`}`

`var doubleIt = multiply(2);`
`print(doubleIt(5)); // 10`

## 12. Async Function

`Future<String> fetchData() async {`
  `return "Data";`
`}`

## 13. Generator Function (Advanced)

`Iterable<int> numbers() sync* {`
  `yield 1;`
  `yield 2;`
  `yield 3;`
`}`

## 14. Main Function Variations

`void main() {}`

`void main(List<String> args) {}`

`Future<void> main() async {}`

## Function vs Method in Dart

- A function is independent (not inside a class)
- A method is a function inside a class
    Belongs to object
    Needs instance to call

## Important Concept: First-Class Functions

- Functions in Dart are objects

`void greet() {`
  `print("Hello");`
`}`

`void execute(Function fn) {`
  `fn();`
`}`

`execute(greet);`

## 1. Callback Deep Dive (Flutter Heavy Use)

**What is a Callback?**

- A callback is a function passed as a parameter to another function, and executed later.

`void execute(Function action) {`
  `action(); // calling callback`
`}`

`void sayHello() {`
  `print("Hello");`
`}`

`void main() {`
  `execute(sayHello);`
`}`

## Types of Callbacks in Flutter

- `VoidCallback onTap;`  //No parameters, no return

## Callback with Parameters

`Function(String) onChanged;`

`TextField(`
  `onChanged: (value) {`
    `print(value);`
  `},`
`);`

## Async Callback

`onPressed: () async {`
  `await fetchData();`
`}`

## Why Callbacks Are Important

- Handle UI events (click, scroll, input)
- Used in widgets
- Enable loose coupling

## 2. Closures (VERY IMPORTANT)

**What is a Closure?**

- A closure is a function that remembers variables from its outer scope, even after that scope is gone.

`Function counter() {`
  `int count = 0;`

  `return () {`
    `count++;`
    `print(count);`
  `};`
`}`

`void main() {`
  `var c = counter();`

  `c(); // 1`
  `c(); // 2`
  `c(); // 3`
`}`

## How it Works (Memory Concept)

- When counter() finishes:

- Normally → local variables destroyed .
- But here → count is kept alive in heap .

- Heap:
- count = 0 → 1 → 2 → 3

- Stack:
- c → function reference

## Callback + Closure Together

`void main() {`
  `int count = 0;`

  `var buttonClick = () {`
    `count++;`
    `print(count);`
  `};`

  `buttonClick();`
  `buttonClick();`
`}`

***“A callback is a function passed to another function for later execution, while a closure is a function that captures and retains access to variables from its lexical scope even after the outer function has finished execution.”***


## 1. Streams & Async Callbacks (Flutter Advanced)

**What is a Stream?**

- A Stream = sequence of async data over time

`Stream<int> countStream() async* {`
  `for (int i = 1; i <= 5; i++) {`
    `await Future.delayed(Duration(seconds: 1));`
    `yield i;`
  `}`
`}`

- Listening to Stream (Callback!)

`void main() {`
  `countStream().listen((value) {`
    `print(value); // callback`
  `});`
`}`

- .listen() takes a callback function
- Runs every time new data comes

`StreamBuilder<int>(`
  `stream: countStream(),`
  `builder: (context, snapshot) {`
    `return Text("${snapshot.data}");`
  `},`
`);`

***Async Callback***

`onPressed: () async {`
  `var data = await fetchData();`
  `print(data);`
`}`

***setState() is a Flutter method used in StatefulWidget to notify the framework that the widget’s state has changed and needs to be rebuilt.”***
