import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/JS/topicName/jsTopics.dart';

class ExploringMap extends StatefulWidget {
  const ExploringMap({Key? key}) : super(key: key);

  @override
  State<ExploringMap> createState() => _ExploringMapState();
}

class _ExploringMapState extends State<ExploringMap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 76,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Exploring Map'),
          const P(
              'In JavaScript, a Map is a collection of key-value pairs, where each key is unique, and it can hold any type of values like objects, primitives, and other maps. In this code, we will learn about various methods and properties of the Map object in JavaScript.'),
          const TableResponsive(
            table: CTable(
              col: [
                DataColumn(
                  label: ThText('Method'),
                ),
                DataColumn(
                  label: ThText('Description'),
                ),
              ],
              row: [
                DataRow(
                  cells: [
                    DataCell(
                      TrText('Map.prototype.clear()'),
                    ),
                    DataCell(
                      TrText('Removes all key-value pairs from the map.'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('Map.prototype.delete(key)'),
                    ),
                    DataCell(
                      TrText(
                          'Removes the entry with the specified key from the map.'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('Map.prototype.entries()'),
                    ),
                    DataCell(
                      TrText(
                          'Returns an iterator object that contains an array of [key, value] pairs for each element.'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('Map.prototype.forEach(callbackFn)'),
                    ),
                    DataCell(
                      TrText(
                          'Calls the specified function once for each key-value pair in the map.'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('Map.prototype.get(key)'),
                    ),
                    DataCell(
                      TrText(
                          'Returns the value associated with the specified key in the map.'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('Map.prototype.has(key)'),
                    ),
                    DataCell(
                      TrText(
                          'Returns a Boolean indicating whether the specified key is present in the map.'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('Map.prototype.keys()'),
                    ),
                    DataCell(
                      TrText(
                          'Returns an iterator object that contains the keys for each element in the map.'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('Map.prototype.set(key, value)'),
                    ),
                    DataCell(
                      TrText(
                          'Sets the value for the specified key in the map.'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('Map.prototype.values()'),
                    ),
                    DataCell(
                      TrText(
                          'Returns an iterator object that contains the values for each element in the map.'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const H3('Source Code'),
          Code(title: 'script.js', code: code1, type: 'javascript'),
          const H4('Output'),
          Code(title: 'terminal', code: code2, type: 'text'),
          const H2(
              'Using Maps in JavaScript: Common Mistakes and Best Practices'),
          Code(title: 'script.js', code: code3, type: 'javascript'),
          const H4('Output'),
          Code(title: 'terminal', code: code4, type: 'text'),
          const H2('Using NaN as a Key in JavaScript Maps'),
          const P(
              'In JavaScript, NaN stands for "Not a Number" and is a special value that represents an unrepresentable or undefined value in a numeric context. One interesting feature of NaN is that it is not equal to any other value, including itself. This can make it a useful value to use as a key in Maps, but it also presents some challenges.'),
          Code(title: 'script.js', code: code5, type: 'javascript'),
          const H3('Challenges of Using NaN as a Key'),
          const P(
              'One of the main challenges of using NaN as a key in a Map is that NaN is not equal to any other value, including itself. This means that you cannot use the has() method to check if a key exists in a Map that is equal to NaN. Instead, you must use the isNaN() function to check for NaN explicitly:'),
          Code(title: 'script.js', code: code6, type: 'javascript'),
          const P(
              'Another challenge of using NaN as a key is that it can cause unexpected behavior when used with certain operations, such as sorting:'),
          Code(title: 'script.js', code: code7, type: 'javascript'),
          const P(
              'In this example, we create a Map with three key-value pairs. When we use the spread operator and the sort() method to sort the entries, the NaN value will always be sorted to the end of the list. This is because NaN is not equal to any other value and cannot be compared using normal comparison operators.'),
          const H4('Best Practices'),
          const P(
              'To use NaN effectively as a key in your Map, follow these best practices:'),
          const Li(
              'Use isNaN() to check for NaN explicitly instead of using has().'),
          const Li(
              'Be aware of the potential for unexpected behavior when using NaN with certain operations, such as sorting.'),
          const P(
              'By following these best practices, you can use NaN effectively as a key in your Maps without running into unexpected issues.'),
          const H2('Some Examples'),
          const H3('Source Code'),
          Code(title: 'script.js', code: code8, type: 'javascript'),
          const H4('Ouput'),
          Code(title: 'terminal', code: code9, type: 'text')
        ],
      ),
    );
  }
}

var code9 = '''
Map(3) { 1 => 'Ist', 2 => 'second', 3 => 'three' }
Ist
second
three
[
  'Fear',   'leads',
  'to',     'anger',
  'anger',  'leads',
  'to',     'hatred',
  'hatred', 'leads',
  'to',     'conflict'
]
Map(6) {
  'Fear' => 1,
  'leads' => 3,
  'to' => 3,
  'anger' => 2,
  'hatred' => 2,
  'conflict' => 1
}
Map(4) { 1 => 2, 2 => 3, 3 => 1, 4 => 1 }
Map(3) { 1 => 2, 54 => 1, 52 => 1 }
''';
var code8 = '''
// Merging Maps in JavaScript
// In JavaScript, maps can be merged using the spread operator and an array. This allows you to combine the key-value pairs from multiple maps into a new map.

//Maps can be merged with Arrays
const first = new Map([
  [1, "one"],
  [2, "two"],
  [3, "three"],
]);
const second = new Map([
  [1, "first"],
  [2, "second"],
]);
const merged = new Map([...first, ...second, [1, "Ist"]]);
console.log(merged);
console.log(merged.get(1));
console.log(merged.get(2));
console.log(merged.get(3));

// ***********************************

// Counting Word Frequency in JavaScript
const sentence =
  "Fear leads to anger anger leads to hatred hatred leads to conflict";
const words = sentence.split(" ");
console.log(words);
const wordFrequency = new Map();
for (let word of words) {
  if (wordFrequency.has(word)) {
    wordFrequency.set(word, wordFrequency.get(word) + 1);
  } else {
    wordFrequency.set(word, 1);
  }
}
console.log(wordFrequency);

// ***********************************

// Grouping Objects by Property Value in JavaScript
const people = [
  { name: "Raja", age: 30 },
  { name: "Sara", age: 25 },
  { name: "Suresh", age: 30 },
  { name: "Sundar", age: 25 },
];

const peopleByAge = new Map();
for (let person of people) {
  const age = person.age;
  if (peopleByAge.has(age)) {
    peopleByAge.get(age).push(person);
  } else {
    peopleByAge.set(age, [person]);
  }
}

// ***********************************

// Counting the Frequency of Elements in an Array with JavaScript
function frequencyCounter(arr) {
  const map = new Map();
  for (let i = 0; i < arr.length; i++) {
    const element = arr[i];
    map.set(element, (map.get(element) || 0) + 1);
  }
  return map;
}

const array = [1, 2, 3, 1, 2, 2, 4];
console.log(frequencyCounter(array));
// Output: Map(4) { 1 => 2, 2 => 3, 3 => 1, 4 => 1 }

const array2 = [1, 54, 1, 52];
console.log(frequencyCounter(array2));
// Output: Map(3) { 1 => 2, 54 => 1, 52 => 1 }
''';
var code7 = '''
const myMap5 = new Map();
myMap5.set(NaN, "Not a Number");
myMap5.set(1, "One");
myMap5.set(2, "Two");

console.log([...myMap5.entries()].sort()); // [[1, "One"], [2, "Two"], [NaN, "Not a Number"]]
''';
var code6 = '''
const myMap3 = new Map();
myMap3.set(NaN, "Not a Number");

console.log(myMap3.has(NaN)); // false  // but my output is true
console.log(isNaN([...myMap3.keys()][0])); // true
''';
var code5 = '''
console.log(Number("Ram")); // NaN
const myMaps = new Map();
myMaps.set(NaN, "Not a Number"); // Not a Number
console.log(myMaps.get(NaN));
''';
var code4 = '''
false
value1
value1
undefined
value2
undefined
''';
var code3 = '''
// Mistake 1: Using the wrong syntax to set values
// One common mistake is to use the wrong syntax to set values in a Map. This can happen when developers try to set values using the same syntax as they would use for an object. For example:

const wrongMap = new Map();
wrongMap["key1"] = "Data1";
wrongMap["key2"] = "Data2";
console.log(wrongMap.has("key1")); // false

// This is incorrect because Maps are not meant to be accessed like objects. Instead, you should use the set() method to add key-value pairs to a Map:
const correctMap = new Map();
correctMap.set("key1", "Data1");
correctMap.set("key2", "Data2");

// ---------------------

// Mistake 2: Not using the has() method to check if a key exists
// Another mistake that developers make is to assume that a key exists in a Map without checking for it first. This can result in errors or unexpected behavior. To avoid this, you should always use the has() method to check if a key exists before trying to access its value:

const myMap1 = new Map();
myMap1.set("key1", "value1");

if (myMap1.has("key1")) {
  console.log(myMap1.get("key1"));
}

// --------------------

// Mistake 3: Treating keys as strings when they are not
// Maps can use any type of value as a key, not just strings. However, if you try to use a non-string value as a key, it will be converted to a string. This can lead to unexpected results if you are not aware of it. To avoid this, you should always use the same type of value for a key that you intend to use when you retrieve it later:

const myMap2 = new Map();
const objKey = {};
const arrKey = [];

myMap2.set(objKey, "value1");
myMap2.set(arrKey, "value2");

console.log(myMap2.get(objKey)); // "value1"
console.log(myMap2.get({})); // undefined
console.log(myMap2.get(arrKey)); // "value2"
console.log(myMap2.get([])); // undefined
''';
var code2 = '''
Map(4) {
  'name' => 'Joes',
  'age' => 30,
  'city' => 'Salem',
  'contact' => '9043017689'
}
Map(4) {
  'name' => 'Joes',
  'age' => 31,
  'city' => 'Salem',
  'contact' => '9043017689'
}
Map Size:  4
Before Delete : Map(4) {
  'name' => 'Joes',
  'age' => 31,
  'city' => 'Salem',
  'contact' => '9043017689'
}
After Delete : Map(3) { 'name' => 'Joes', 'age' => 31, 'contact' => '9043017689' }
Joes
true
false
name = Joes
age = 31
contact = 9043017689
name
age
contact
Joes
31
9043017689
name  = Joes
age  = 31
contact  = 9043017689
name  = Joes
age  = 31
contact  = 9043017689
After Clear : Map(0) {}
Map(2) { 'key1' => 'value1', 'key2' => 'value2' }    
value1
[ [ 'key1', 'value1' ], [ 'key2', 'value2' ] ]       
[ [ 'key1', 'value1' ], [ 'key2', 'value2' ] ]  
''';
var code1 = '''
// Map Object in JS

// Creating a Map Object:
const userMap = new Map();

// Adding Elements to a Map:
// To add a new key-value pair to the Map, we use the set() method. The following code adds four key-value pairs to the userMap:
userMap.set("name", "Joes");
userMap.set("age", 30);
userMap.set("city", "Salem");
userMap.set("contact", "9043017689");

// Printing a Map Object:
// To print a Map object, we can simply log it to the console. The following code logs the userMap to the console:
console.log(userMap);

// Updating the Value of a Map:
// To update the value of an existing key in the Map, we can simply use the set() method again with the same key. The following code updates the age of the user in the userMap:
userMap.set("age", 31);
console.log(userMap);

// Map Size:
// To get the size of a Map object, we can use the size property. The following code logs the size of the userMap:
console.log("Map Size: ", userMap.size);

// Deleting a Key-Value Pair from a Map:
// To remove a key-value pair from the Map, we can use the delete() method. The following code removes the city from the userMap:
console.log("Before Delete :", userMap);
userMap.delete("city");
console.log("After Delete :", userMap);

// Retrieving a Value from a Map:
// To retrieve the value of a key from the Map, we can use the get() method. The following code retrieves the value of the name key from the userMap:
console.log(userMap.get("name"));

// Checking if a Key Exists in a Map:
// To check if a key exists in the Map, we can use the has() method. The following code checks if the name and city keys exist in the userMap:
console.log(userMap.has("name"));
console.log(userMap.has("city"));

// Iterating a Map with for...of:
// We can iterate over the keys and values of a Map using a for...of loop with destructuring. The following code logs each key-value pair of the userMap to the console:
for (const [key, value] of userMap) {
  console.log(`\${key} = \${value}`);
}

// Retrieving Keys from a Map:
// We can retrieve all the keys of a Map using the keys() method. The following code logs each key of the userMap to the console:
for (const key of userMap.keys()) {
  console.log(key);
}

// Retrieving Values from a Map:
// We can retrieve all the values of a Map using thevalues() method. The following code logs each value of the userMap to the console:
for (const value of userMap.values()) {
  console.log(value);
}

// Retrieving Entries from a Map:
// We can retrieve all the entries of a Map using theentries() method. The following code logs each entry of the userMap to the console:
for (const [key, value] of userMap.entries()) {
  console.log(`\${key}  = \${value}`);
}

// Retrieving Key-value from a Map using forEach():
// We can retrieve all the key-value of a Map using the forEach() method. The following code logs each key-value of the userMap to the console:
userMap.forEach((value, key) => {
  console.log(`\${key}  = \${value}`);
});

// Clear all values from a Map:
// The clear() method is a built-in method of the Map object in JavaScript. It is used to remove all key-value pairs from a Map object. Here are some examples of how the clear() method can be used with Map:
userMap.clear();
console.log("After Clear :", userMap);

// Relation with Array objects
// In JavaScript, a Map object is a collection of key-value pairs that allows keys of any type, including objects, to be used as keys. A Map object can be created from an array of arrays, where each sub-array contains two elements, the key and the value. Here's an example:
const arr = [
  ["key1", "value1"],
  ["key2", "value2"],
];
const myMap = new Map(arr);
console.log(myMap);
console.log(myMap.get("key1"));

// To convert a Map object to an array, we can use the Array.from() method. Here's an example:
console.log(Array.from(myMap));

// Also use spread operator. Here's an example:
console.log([...myMap]);
''';
