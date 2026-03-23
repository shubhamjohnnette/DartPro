// Use ? when a variable can be null.

String? name;
//  ?? → Default Value (Null Coalescing)
// Use when you want a fallback value.

String? name2;

// late Keyword (Important)
// Used when a variable will be initialized later but must not be null.

late String nameLate;

void main() {
  nameLate = "John";
  print(nameLate);
  name = null; // ✅ Allowed
  name = "John"; // ✅ Allowed
  print(name!.length); // Output: 4
  // Using null-aware operator (?.) to safely access properties/methods

  print(name2 ?? "Guest"); // Guest

  //  ??= → Assign if Null

  name ??= "Default";
  print(name); // Default

  // ?. → Null-Aware Access

  // Safely access properties/methods.
  print(name?.length); // Output: 7
  print(name2?.length); // Output: null
}


// Dangerous case:

// String? name = null;

// print(name!.length); // ❌ Runtime crash