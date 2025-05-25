import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/js/topicName/jsTopics.dart';

class mapEg extends StatefulWidget {
  const mapEg({Key? key}) : super(key: key);

  @override
  State<mapEg> createState() => _mapEgState();
}

class _mapEgState extends State<mapEg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 64,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Power of map'),
          const P(
              'JavaScript provides several ways to manipulate and transform arrays, but one of the most popular and widely used methods is map.The map() method is used to create a new array with the results of calling a provided function on every element in the calling array. The map() method does not modify the original array, but instead, it creates a new array with the modified elements. The function passed to map() is called for each element in the array, and it takes three arguments: the current value, the current index, and the entire array. The map() method is commonly used to transform an array of data into a new format, such as converting an array of numbers into an array of strings.'),
          const H3('1.Simple Transformation'),
          Code(title: 'script.js', code: code1, type: 'javascript'),
          const H3('2. Modifying Array Elements'),
          Code(title: 'script.js', code: code2, type: 'javascript'),
          const H3('3. Combining Arrays'),
          Code(title: 'script.js', code: code3, type: 'javascript'),
          const H3('4. Creating a new Array'),
          Code(title: 'script.js', code: code4, type: 'javascript'),
          const H3('5. Filtering an Array'),
          Code(title: 'script.js', code: code5, type: 'javascript'),
          const H3('6. Extracting Properties from an Array of Objects'),
          Code(title: 'script.js', code: code6, type: 'javascript'),
          const H3('7. Modifying an Array of Objects'),
          Code(title: 'script.js', code: code7, type: 'javascript'),
          const H3('8. Flattening an Array'),
          Code(title: 'script.js', code: code8, type: 'javascript'),
          const H3('9. Formatting a Date Array'),
          Code(title: 'script.js', code: code9, type: 'javascript'),
          const H3('10. Creating an Array of DOM Elements'),
          Code(title: 'script.js', code: code10, type: 'javascript'),
          const H3('11.Using three arguments'),
          Code(title: 'script.js', code: code11, type: 'javascript'),
          const H3(
              '12.Given an array of numbers, write a function that returns a new array containing only the even numbers from the original array, squared.'),
          Code(title: 'script.js', code: code12, type: 'javascript'),
          const H3(
              '13.Given an array of objects representing books, create a new array containing the book titles and authors in the format "Title by Author".'),
          Code(title: 'script.js', code: code13, type: 'javascript'),
          const H3(
              '14.Given an array of temperatures in Celsius, convert each temperature to Fahrenheit.'),
          Code(title: 'script.js', code: code14, type: 'javascript'),
          const H3(
              '15.Given an array of strings, create a new array with the lengths of each string.'),
          Code(title: 'script.js', code: code15, type: 'javascript'),
          const H3(
              '16.Given an array of objects representing students, create a new array with their full names.'),
          Code(title: 'script.js', code: code16, type: 'javascript'),
          const H3(
              '17.Suppose you have an array of objects representing different currencies with their exchange rates to USD. You want to convert an amount from one currency to another using the exchange rates.'),
          Code(title: 'script.js', code: code17, type: 'javascript'),
          const H3(
              '18.Formatting Phone Numbers - Suppose you have an array of phone numbers represented as strings, and you want to format them in a specific pattern.(Slice Function)'),
          Code(title: 'script.js', code: code18, type: 'javascript'),
          const H3(
              '19.Fetching Data from an API - Suppose you are fetching data from an API that returns an array of objects, and you want to extract specific information from each object.'),
          Code(title: 'script.js', code: code19, type: 'javascript'),
          const H3(
              '20.Calculating Item Totals - Suppose you have an array of objects representing items in a shopping cart, and you want to calculate the total price for each item by multiplying the quantity and price.'),
          Code(title: 'script.js', code: code20, type: 'javascript'),
        ],
      ),
    );
  }
}

var code20 = '''
const cartItems = [
  { name: "Shirt", price: 20, quantity: 2 },
  { name: "Pants", price: 30, quantity: 1 },
  { name: "Shoes", price: 50, quantity: 1 },
];

const itemTotals = cartItems.map((item) => ({
  name: item.name,
  total: item.price * item.quantity,
}));

console.log(itemTotals);
// Output: [
//   { name: 'Shirt', total: 40 },
//   { name: 'Pants', total: 30 },
//   { name: 'Shoes', total: 50 }
// ]
''';
var code19 = '''
// Assume the API returns the following data
const response = [
  { id: 1, name: "John Doe", age: 25, email: "john@example.com" },
  { id: 2, name: "Jane Smith", age: 30, email: "jane@example.com" },
  { id: 3, name: "Mike Johnson", age: 35, email: "mike@example.com" },
];

const users = response.map((user) => ({
  id: user.id,
  name: user.name,
  email: user.email,
}));

console.log(users);
// Output: [
//   { id: 1, name: 'John Doe', email: 'john@example.com' },
//   { id: 2, name: 'Jane Smith', email: 'jane@example.com' },
//   { id: 3, name: 'Mike Johnson', email: 'mike@example.com' }
// ]
''';
var code18 = '''
const products = [
  { id: 1, name: "iPhone", price: 999, category: "Electronics" },
  { id: 2, name: "Shirt", price: 25, category: "Fashion" },
  { id: 3, name: "Book", price: 15, category: "Books" },
  { id: 4, name: "TV", price: 799, category: "Electronics" },
];

const filteredProducts = products
  .filter(
    (product) => product.category === "Electronics" && product.price > 500
  )
  .map((product) => ({ id: product.id, name: product.name }));

console.log(filteredProducts);
// Output: [
//   { id: 1, name: 'iPhone' },
//   { id: 4, name: 'TV' }
// ]
''';
var code17 = '''
const currencies = [
  { currency: "USD", rate: 1 },
  { currency: "EUR", rate: 0.85 },
  { currency: "GBP", rate: 0.73 },
  { currency: "JPY", rate: 109.97 },
];
const amount = 100; // Amount in USD
const targetCurrency = "EUR";

const convertedAmounts = currencies.map((currency) => {
  const convertedAmount = amount * currency.rate;
  return { currency: currency.currency, amount: convertedAmount };
});

console.log(convertedAmounts);
// Output: [
//   { currency: 'USD', amount: 100 },
//   { currency: 'EUR', amount: 85 },
//   { currency: 'GBP', amount: 73 },
//   { currency: 'JPY', amount: 10997 }
// ]
''';
var code16 = '''
const students = [
  { firstName: "John", lastName: "Doe" },
  { firstName: "Jane", lastName: "Smith" },
  { firstName: "Mike", lastName: "Johnson" },
];

const fullNames = students.map(
  (student) => `\${student.firstName} \${student.lastName}`
);
console.log(fullNames);
// Output: ["John Doe", "Jane Smith", "Mike Johnson"]
''';
var code15 = '''
const strings = ["hello", "world", "javascript"];

const stringLengths = strings.map((str) => str.length);
console.log(stringLengths);
// Output: [5, 5, 10]
''';
var code14 = '''
const celsiusTemperatures = [25, 30, 15, 10];

const fahrenheitTemperatures = celsiusTemperatures.map(
  (temp) => (temp * 9) / 5 + 32
);
console.log(fahrenheitTemperatures);
// Output: [77, 86, 59, 50]
''';
var code13 = '''
const books = [
  {
    title: "The Great Gatsby",
    author: "F. Scott Fitzgerald",
  },
  {
    title: "To Kill a Mockingbird",
    author: "Harper Lee",
  },
  {
    title: "Pride and Prejudice",
    author: "Jane Austen",
  },
];

const bookTitlesAndAuthors = books.map(
  (book) => `\${book.title} by \${book.author}`
);
console.log(bookTitlesAndAuthors);
// Output:
// [
//   "The Great Gatsby by F. Scott Fitzgerald",
//   "To Kill a Mockingbird by Harper Lee",
//   "Pride and Prejudice by Jane Austen"
// ]
''';
var code12 = '''
function getEvenSquaredNumbers(numbers) {
  const evenNumbers = numbers.filter((num) => num % 2 === 0);
  const squaredNumbers = evenNumbers.map((num) => num ** 2);
  return squaredNumbers;
}

const numbers = [1, 2, 3, 4, 5, 6];
const result = getEvenSquaredNumbers(numbers);
console.log(result); // Output: [4, 16, 36]
''';
var code11 = '''
const wordss = ["apple", "banana", "cherry"];

const wordsStats = wordss.map(function (currentValue, index, array) {
  return {
    word: currentValue,
    length: currentValue.length,
    position: index,
    totalWords: array.length,
  };
});

console.log(wordsStats);
// [
//     { word: 'apple', length: 5, position: 0, totalWords: 3 },  
//     { word: 'banana', length: 6, position: 1, totalWords: 3 }, 
//     { word: 'cherry', length: 6, position: 2, totalWords: 3 }  
//  ]
''';
var code10 = '''
const names = ["Ram", "Sam", "Ravi"];
const nameElements = names.map((name) => {
  const nameElement = document.createElement("div");
  nameElement.innerText = name;
  return nameElement;
});
console.log(nameElements); // [ div, div, div ]
''';
var code9 = '''
const dates = [
  new Date("2022-01-01"),
  new Date("2022-02-01"),
  new Date("2022-03-01"),
];
const formattedDates = dates.map((date) => date.toLocaleDateString());
console.log(formattedDates); // ["1/1/2022", "2/1/2022", "3/1/2022"]
''';
var code8 = '''
const nestedArray = [
  [1, 2],
  [3, 4],
  [5, 6],
];
const flattenedArray = nestedArray.map((subArray) => subArray.join(""));
console.log(flattenedArray); // ["12", "34", "56"]
''';
var code7 = '''
const users = [
  { name: "Ram", age: 30 },
  { name: "Sam", age: 25 },
  { name: "Ravi", age: 35 },
];
const updatedUsers = users.map((user) => {
  return {
    ...user,
    age: user.age + 1,
  };
});
console.log(updatedUsers);
// [{ name: "Ram", age: 31 }, { name: "Sam", age: 26 }, { name: "Ravi", age: 36 }]
''';
var code6 = '''
const users1 = [
  { name: "Ram", age: 30 },
  { name: "Sam", age: 25 },
  { name: "Ravi", age: 35 },
];
const namess = users1.map((user) => user.name);
console.log(namess); // ["Ram", "Sam", "Ravi"]
''';
var code5 = '''
const numbers2 = [1, 2, 3, 4, 5];
const evenNumbers = numbers2.map((num) => num % 2 === 0);
console.log(evenNumbers); // [false, true, false, true, false]
''';
var code4 = '''
const numbers1 = [1, 2, 3, 4, 5];
const squaredNumbers = numbers1.map((num) => num * num);
console.log(squaredNumbers); // [1, 4, 9, 16, 25]
''';
var code3 = '''
const fruits = ["apple", "banana"];
const colors = ["red", "yellow"];
const fruitColors = fruits.map((fruit, index) => fruit + "-" + colors[index]);
console.log(fruitColors); // ["apple-red", "banana-yellow"]
''';
var code2 = '''
const words = ["hello", "world"];
const capitalizedWords = words.map((word) => word.toUpperCase());
console.log(capitalizedWords); // ["HELLO", "WORLD"]
''';
var code1 = '''
const numbers = [1, 2, 3, 4, 5];
const doubledNumbers = numbers.map((num) => num * 2);
console.log(doubledNumbers); // [2, 4, 6, 8, 10]
''';
