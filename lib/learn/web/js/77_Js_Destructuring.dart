import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/js/topicName/jsTopics.dart';

class Destructuring extends StatefulWidget {
  const Destructuring({Key? key}) : super(key: key);

  @override
  State<Destructuring> createState() => _DestructuringState();
}

class _DestructuringState extends State<Destructuring> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 77,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('JavaScript Destructuring Assignment'),
          const P(
              'JavaScript destructuring was introduced in ES6 (ECMAScript 2015) and is a feature of the language that makes it easier to extract data from arrays and objects.'),
          const H3('Array Destructuring:'),
          Code(title: 'script.js', code: code1, type: 'javascript'),
          const H3('Object Destructuring:'),
          Code(title: 'script.js', code: code2, type: 'javascript'),
          const H3('JavaScript Destructuring with Default Values'),
          Code(title: 'script.js', code: code3, type: 'javascript'),
          const H3(
              'Swapping Variables with Ease: Using Destructuring Assignment Syntax in JavaScript'),
          Code(title: 'script.js', code: code4, type: 'javascript'),
          const H3(
              'Efficient Array Manipulation in JavaScript: Skipping Unwanted Items with Destructuring Assignment'),
          Code(title: 'script.js', code: code5, type: 'javascript'),
          const H3(
              'Efficient Data Manipulation in JavaScript: Assigning Remaining Elements to a Single Variable using Destructuring and Rest Syntax for Arrays and Objects'),
          Code(title: 'script.js', code: code6, type: 'javascript'),
          const P(
              'And here\'s an example of how to use destructuring and rest syntax with objects:'),
          Code(title: 'script.js', code: code7, type: 'javascript'),
          const H3('Nested Destructuring Assignment'),
          Code(title: 'script.js', code: code8, type: 'javascript'),
        ],
      ),
    );
  }
}

var code8 = '''
// Destructuring an object with nested objects:

const user = {
  name5: "Tutor Joes",
  address: {
    city: "Salem",
    state: "Tamil Nadu",
    country: "India",
  },
};

const {
  name5,
  address: { city, state },
} = user;

console.log(name5); // 'Tutor Joes'
console.log(city); // 'Salem'
console.log(state); // 'Tamil Nadu'

// // Destructuring an array with nested arrays:

const numbers3 = [1, 2, [3, 4, [5, 6]]];
const [A, B, [C, D, [E, F]]] = numbers3;
console.log(A); // 1
console.log(B); // 2
console.log(C); // 3
console.log(D); // 4
console.log(E); // 5
console.log(F); // 6

// Destructuring an array of objects with nested objects:

const users = [
  {
    name: "Tutor Joes",
    address: {
      city: "Salem",
      state: "Tamil Nadu",
      country: "India",
    },
  },
  {
    name: "Sara",
    address: {
      city: "Chennai",
      state: "Tamil Nadu",
      country: "India",
    },
  },
];

const [
  {
    name: name6,
    address: { city: city1 },
  },
  {
    name: name7,
    address: { city: city2 },
  },
] = users;
console.log(name6); // 'Tutor Joes'
console.log(city1); // 'Salem'
console.log(name7); // 'Sara'
console.log(city2); // 'Chennai'
''';
var code7 = '''
let myObj = { a1: 1, b1: 2, c: 3, d: 4, e: 5, f: 6, g: 7 };

let { a1, b1, ...rest } = myObj;

console.log(a1); // Output: 1
console.log(b1); // Output: 2
console.log(rest); // Output: {c: 3, d: 4, e: 5, f: 6, g: 7}
''';
var code6 = '''
let myArray1 = [1, 2, 3, 4, 5, 6, 7];

let [first3, second3, ...rest3] = myArray1;

console.log(first3); // Output: 1
console.log(second3); // Output: 2
console.log(rest3); // Output: [3, 4, 5, 6, 7]
''';
var code5 = '''
let myArray = [1, 2, 3, 4, 5];
let [first, , , fourth] = myArray;
console.log(first); // Output: 1
console.log(fourth); // Output: 4
''';
var code4 = '''
let a = 1;
let b = 2;

[a, b] = [b, a];

console.log(a); // Output: 2
console.log(b); // Output: 1
''';
var code3 = '''
// using default values with array destructuring

const numbers = [1, 2];
const [x, y, z = 3] = numbers;

console.log(x); // Output: 1
console.log(y); // Output: 2
console.log(z); // Output: 3 (default value)

// using default values with object destructuring:

const person2 = { name2: "Joes", age2: 30 };
const { name2, age2, gender2 = "male" } = person2;

console.log(name2); // Output: 'Joes'
console.log(age2); // Output: 30
console.log(gender2); // Output: 'male' (default value)
''';
var code2 = '''
// Before ES6
const person1 = { name1: "Joes", age1: 30, gender1: "male" };
const name1 = person1.name1;
const age1 = person1.age1;
const gender1 = person1.gender1;
console.log(name1); // Output: 'Joes'
console.log(age1); // Output: 30
console.log(gender1); // Output: 'male'

// After ES6
const person = { name: "Joes", age: 30, gender: "male" };
const { name, age, gender } = person;
console.log(name); // Output: 'Joes'
console.log(age); // Output: 30
console.log(gender); // Output: 'male'
''';
var code1 = '''
// Before ES6
const numbers1 = [1, 2, 3, 4, 5];
const first1 = numbers1[0];
const second1 = numbers1[1];
const rest1 = numbers1.slice(2);
console.log(first1); // Output: 1
console.log(second1); // Output: 2
console.log(rest1); // Output: [3, 4, 5]

// After ES6
const numbers2 = [1, 2, 3, 4, 5];
const [first2, second2, ...rest2] = numbers2;
console.log(first2); // Output: 1
console.log(second2); // Output: 2
console.log(rest2); // Output: [3, 4, 5]
''';
