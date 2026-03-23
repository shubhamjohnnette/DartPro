// Literal Syntax (Most Common)

import 'dart:collection';

Map<String, int> marks = {'Math': 90, 'Science': 85};
var marksInterface = {'Math': 90, 'Science': 85};

// Empty Map
Map<String, String> capitals = {};
var markscapitals = <String, int>{};

// Using Map() Constructor
var marksConstructor = Map<String, int>();

// Using Map.from()  Copy from another map.

var map1 = {'a': 1, 'b': 2};
var map2 = Map.from(map1);

// Using Map.of()  Similar to Map.from() but type-safe.

var map3 = {'a': 1, 'b': 2};
var map4 = Map.of(map3);

// Using Map.fromIterable()  Create a map from an iterable (like a list).

var list = ['a', 'b', 'c'];

var map = Map.fromIterable(
  list,
  key: (item) => item,
  value: (item) => item.length,
); //{a: 1, b: 1, c: 1}

// Using Spread Operator (...)

var map5 = {'a': 1};
var map6 = {...map5, 'b': 2};

// Conditional Map (if inside collection)

bool addExtra = true;

var map7 = {'a': 1, if (addExtra) 'b': 2};

// . Loop inside Map (collection for)

var mapLoop = {
  for (int i = 0; i < 5; i++) i: i * 2,
}; //{0: 0, 1: 2, 2: 4, 3: 6, 4: 8}

// Const Map (Immutable)

const marksConst = {'Math': 90, 'Science': 85};

// LinkedHashMap (Ordered Map)

var mapLinkedHashMap = LinkedHashMap<String, int>();

void main() {
  mapLinkedHashMap['Math'] = 90;
  mapLinkedHashMap['Science'] = 85;

  // Accessing map elements
  print(marks['Math']); // Output: 90
  print(marks['Science']); // Output: 85

  // Adding elements to a map
  marks['English'] = 80;

  // Iterating through a map
  marks.forEach((subject, score) {
    print('$subject: $score');
  });
}
