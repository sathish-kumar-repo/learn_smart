import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/js/topicName/jsTopics.dart';

class filterEg extends StatefulWidget {
  const filterEg({Key? key}) : super(key: key);

  @override
  State<filterEg> createState() => _filterEgState();
}

class _filterEgState extends State<filterEg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 63,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Power of the filter() Method'),
          const P(
              'The filter() method in JavaScript is a built-in method of the Array object that allows you to create a new array with all elements that pass a certain test. The test is implemented by a callback function that you provide as an argument to the filter() method. The callback function is called for each element of the original array, and if it returns true, the element is included in the new array. If it returns false, the element is excluded from the new array.'),
          const P(
              'A closure is a function that has access to the variables in the scope in which it was defined, even after that scope has closed. This can be achieved by returning a function that closes over the variables in its scope.'),
          const H2('Syntax'),
          Code(title: 'Syntax', code: syntax, type: 'javascript'),
          const P('The callback function takes three arguments:'),
          const Li('element: the current element being processed'),
          const Li('index: the index of the current element'),
          const Li('array: the original array'),
          const H3(
              '1. Filtering an array of numbers to only include even numbers:'),
          Code(title: 'script.js', code: code1, type: 'javascript'),
          const H3(
              '2. Filtering an array of objects to only include those with a certain property value:'),
          Code(title: 'script.js', code: code2, type: 'javascript'),
          const H3(
              '3. Filtering an array of strings to only include those of a certain length:'),
          Code(title: 'script.js', code: code3, type: 'javascript'),
          const H3(
              '4. Filtering an array of numbers to only include those that are divisible by 3:'),
          Code(title: 'script.js', code: code4, type: 'javascript'),
          const H3(
              '5. Filtering an array of objects to only include those with a specific value:'),
          Code(title: 'script.js', code: code5, type: 'javascript'),
          const H3(
              '6. Filtering an array of strings to only include those that start with a specific letter:'),
          Code(title: 'script.js', code: code6, type: 'javascript'),
          const H3(
              '7. Filtering an array of objects to only include those with a certain property value:'),
          Code(title: 'script.js', code: code7, type: 'javascript'),
          const H3(
              '8. Filtering an array of objects to only include those that are enabled:'),
          Code(title: 'script.js', code: code8, type: 'javascript'),
          const H3(
              '9. Filtering an array of numbers to only include those greater than a certain value:'),
          Code(title: 'script.js', code: code9, type: 'javascript'),
          const H3(
              '10. Filtering an array of strings to only include those that contain a specific substring:'),
          Code(title: 'script.js', code: code10, type: 'javascript'),
          const H3(
              '11. Filtering an array of objects based on multiple conditions: Category Fruit and Price > 100'),
          Code(title: 'script.js', code: code11, type: 'javascript'),
          const H3('12. Filtering an array of objects based on a search term:'),
          Code(title: 'script.js', code: code12, type: 'javascript'),
          const H4('Ouput for all code'),
          Code(title: 'terminal', code: output, type: 'text'),
          const Note(
              'n addition, filter() always returns a new array and does not modify the original array. It does not change the length of the original array and does not change the index of the elements.'),
        ],
      ),
    );
  }
}

var syntax = '''
var newArray = originalArray.filter(function (element, index, array) {
  // test the element and return true or false
});
''';
var output = '''
[ 2, 4, 6, 8, 10 ]
[ { name: 'Charlie', age: 35 } ]
[ 'fish' ]
[ 3, 6, 9 ]
[
  { name: 'apple', category: 'fruit' },
  { name: 'banana', category: 'fruit' }
]
[ 'elephant' ]
[ { name: 'orange', price: 2.5 }, { name: 'banana', price: 3.5 } ]
[ { name: 'Save', enabled: true }, { name: 'Cancel', enabled: true } ]
[ 6, 7, 8, 9, 10 ]
[ 'elephant', 'giraffe' ]
[
  { name: 'Orange', category: 'fruit', price: 120 },
  { name: 'Mango', category: 'fruit', price: 110 }
]
[
  {
    title: 'Eloquent JavaScript',
    author: 'Marijn Haverbeke',
    year: 2011
  },
  {
    title: "Learning Web Design: A Beginner's Guide to HTML, CSS, JavaScript, and Web Graphics",
    author: 'Jennifer Niederst Robbins',
    year: 2012
  },
  {
    title: 'HTML and CSS: Design and Build Websites',        
    author: 'Jon Duckett',
    year: 2011
  }
]
''';
var code12 = '''
let books = [
  { title: "Eloquent JavaScript", author: "Marijn Haverbeke", year: 2011 },
  {
    title: "JavaScript: The Good Parts",
    author: "Douglas Crockford",
    year: 2008,
  },
  {
    title:
      "Learning Web Design: A Beginner's Guide to HTML, CSS, JavaScript, and Web Graphics",
    author: "Jennifer Niederst Robbins",
    year: 2012,
  },
  {
    title: "HTML and CSS: Design and Build Websites",
    author: "Jon Duckett",
    year: 2011,
  },
  {
    title: "CSS Secrets: Better Solutions to Everyday Web Design Problems",
    author: "Lea Verou",
    year: 2015,
  },
  {
    title: "JavaScript and JQuery: Interactive Front-End Web Development",
    author: "Jon Duckett",
    year: 2014,
  },
  { title: "You Don't Know JS", author: "Kyle Simpson", year: "2014-2019" },
  { title: "React: Up & Running", author: "Stoyan Stefanov", year: 2016 },
  { title: "Node.js Design Patterns", author: "Mario Casciaro", year: 2014 },
  {
    title: "Head First Design Patterns",
    author: "Eric Freeman and Elisabeth Robson",
    year: 2004,
  },
];
const searchTerm = "HTML".toLowerCase();
const year = 2011;
const filteredBooks = books.filter((book) => {
  return book.title.toLowerCase().includes(searchTerm) || book.year === year;
});
console.log(filteredBooks);
''';
var code11 = '''
const products = [
  { name: "Apple", category: "fruit", price: 100 },
  { name: "Carrot", category: "vegetable", price: 50 },
  { name: "Orange", category: "fruit", price: 120 },
  { name: "Broccoli", category: "vegetable", price: 75 },
  { name: "Mango", category: "fruit", price: 110 },
];
const expensiveFruits = products.filter(
  (product) => product.category === "fruit" && product.price > 100
);
console.log(expensiveFruits);
''';
var code10 = '''
let words2 = ["cat", "dog", "elephant", "fish", "giraffe"];
let wordsWithE = words2.filter((word) => word.includes("e"));
console.log(wordsWithE); // ['elephant', 'giraffe']
''';
var code9 = '''
let numbers3 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
let numbersGreaterThan5 = numbers3.filter((number) => number > 5);
console.log(numbersGreaterThan5); // [6, 7, 8, 9, 10]
''';
var code8 = '''
let buttons = [
  { name: "Save", enabled: true },
  { name: "Delete", enabled: false },
  { name: "Cancel", enabled: true },
  { name: "Submit", enabled: false },
];
let enabledButtons = buttons.filter((button) => button.enabled === true);
console.log(enabledButtons);
// [{ name: 'Save', enabled: true }, { name: 'Cancel', enabled: true }]
''';
var code7 = '''
let products1 = [
  { name: "apple", price: 1.2 },
  { name: "orange", price: 2.5 },
  { name: "banana", price: 3.5 },
];
let expensiveProducts = products1.filter((product) => product.price > 2);
console.log(expensiveProducts);
// [{ name: 'orange', price: 2.5 },{ name: 'banana', price: 3.5 }]
''';
var code6 = '''
let words1 = ["cat", "dog", "elephant", "fish", "giraffe"];
let wordsStartsWithE = words1.filter((word) => word.startsWith("e"));
console.log(wordsStartsWithE); // ['elephant']
''';
var code5 = '''
let items = [
  { name: "apple", category: "fruit" },
  { name: "carrot", category: "vegetable" },
  { name: "banana", category: "fruit" },
];
let fruits = items.filter((item) => item.category === "fruit");
console.log(fruits);
// [{ name: "apple", category: "fruit" }, { name: "banana", category: "fruit" }]
''';
var code4 = '''
let numbers2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
let numbersDivisibleBy3 = numbers2.filter((number) => number % 3 === 0);
console.log(numbersDivisibleBy3); // [3, 6, 9]
''';
var code3 = '''
let words = ["cat", "dog", "elephant", "fish", "giraffe"];
let wordsWithFourLetters = words.filter((word) => word.length === 4);
console.log(wordsWithFourLetters); // ['fish']
''';
var code2 = '''
let users = [
  { name: "Alice", age: 25 },
  { name: "Bob", age: 30 },
  { name: "Charlie", age: 35 },
];

let eligible = users.filter((user) => user.age > 30);
console.log(eligible); // [{ name: 'Charlie', age: 35 }]
''';
var code1 = '''
let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
let evenNumbers = numbers.filter((number) => number % 2 === 0);
console.log(evenNumbers); // [2, 4, 6, 8, 10]
''';
