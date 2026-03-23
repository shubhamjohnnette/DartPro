# Variables Decleration in dart

**var**
`var name = "Alex";`
Even though you wrote var, Dart automatically understands:
 `String name = "Alex";`

**Dart is statically typed.**

-Once inferred, the type cannot change

- `var age = 25;`
- `age = 30;`     // ✅ OK
- `age = "Hello";` // ❌ Error`

# When to use var?

- When the type is obvious
- To reduce clutter
- Inside functions where readability is clear

`var total = price * quantity;`

# Avoid var when

- The type is unclear
- Public APIs (be explicit for readability)

# Explicit Type (Recommended for Clarity)

- `String name = "Alex";`
- `int age = 25;`
- `double height = 5.9;`

- Public class properties
- Function parameters
- Return types
- Large projects
- When teaching or improving readability

**const**

- `const gravity = 9.8;`

- Compile-time constant, immutable.
**final**
- Value assigned once, cannot change.
- `final pi = 3.14;`

# Choosing Between var, final, and const

- Use var when the value may change.
- Use final when the value is set once but determined at runtime.
- Use const when the value is fixed at compile-time.

# Common Pitfalls

- Forgetting null safety: String name; without initialization causes an error.
- Misusing dynamic: Overuse can reduce type safety.
- Confusing final vs const: final is runtime constant, const is compile-time.

# Dart Data Types 

**Numbers**

- int whole number .
- double decimal number .

- `int age = 20 ;`
- `double pi = 3.14159;`

**String**

- Sequence of charecter enclosed in '' or " "
- `String name - "Alice";`
- `String greeting = 'Hello Dart!';`

**Boolean**

- Represents true or false .

- `bool isActive = true;`
- `bool isLoggedIn = false;`

**List(Array)**

- Ordered collection of items .

- `List <String> fruits = ["Apple", "Banana" , "Mango"];`

**Set**

- Unordered collection of unique items .
- `Set<int> numbers = {1, 2, 3, 3}; // stores only {1,2,3}`

**Map**

- Key-value paires .
- `Map<String, int> scores = {"Math": 90, "Science": 85};`

**Dynamic** 

- Can hold values of any type (less safe).

- `dynamic value = "Hello";`
- `value = 123; // allowed`

**Null Safety**

- By default, variables cannot be null.
- Use ? to allow null values.

- `String? nickname; // can be null`
