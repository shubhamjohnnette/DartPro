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
