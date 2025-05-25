import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/js/topicName/jsTopics.dart';

class reduce extends StatefulWidget {
  const reduce({Key? key}) : super(key: key);

  @override
  State<reduce> createState() => _reduceState();
}

class _reduceState extends State<reduce> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 65,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1(
              'Reducing Arrays to a Single Value By Using the reduce() Method'),
          const P(
              'The reduce() method in JavaScript is a powerful array method that allows you to iterate through an array and reduce it to a single value. This method can be used for a variety of tasks such as summing the values of an array, flattening an array, or counting the occurrences of an element.'),
          const Li(
              'array : is the array on which the reduce() method is being called.'),
          const Li(
              'function(accumulator, currentValue, currentIndex, array) : is the callback function that is executed on each iteration. It takes four arguments:'),
          const Li(
              'accumulator : is the accumulated value that is returned on each iteration. It starts with the initialValue (if provided) or the first element of the array (if no initialValue is provided)'),
          const Li(
              'currentValue : is the current element of the array that is being processed.'),
          const Li(
              'currentIndex : is the index of the current element of the array that is being processed.'),
          const Li(
              'array : is the array on which the reduce() method is being called.'),
          const Li(
              'initialValue(optional) : is the starting value for the accumulator. If no initialValue is provided, the first element of the array is used as the starting value.'),
          const Note(
              'The reduce() method returns a single value that is the result of executing the callback function on each element of the array.'),
          const H3('Example 1: Summing the values of an array'),
          Code(title: 'script.js', code: code1, type: 'javascript'),
          const H3('Example 2: Flattening an array'),
          Code(title: 'script.js', code: code2, type: 'javascript'),
          const H3('Example 3: Counting the occurrences of an element'),
          Code(title: 'script.js', code: code3, type: 'javascript'),
          const H3('Example 4: Finding the largest value in an array'),
          Code(title: 'script.js', code: code4, type: 'javascript'),
          const H3('Example 5: Grouping elements by a certain property'),
          Code(title: 'script.js', code: code5, type: 'javascript'),
        ],
      ),
    );
  }
}

var syntax = '''
array.reduce(function (accumulator, currentValue, currentIndex, array) {
  // code to be executed on each iteration
}, initialValue);
''';
var code5 = '''
let people = [
  { name: "Rakesh", age: 25, city: "Chennai" },
  { name: "Raj", age: 30, city: "Salem" },
  { name: "Sara", age: 35, city: "Chennai" },
];

let groupedByCity = people.reduce((accumulator, currentValue) => {
  if (currentValue.city in accumulator) {
    accumulator[currentValue.city].push(currentValue);
  } else {
    accumulator[currentValue.city] = [currentValue];
  }
  return accumulator;
}, {});

console.log(groupedByCity);
/* 
{ 
Chennai: [{ name: 'Rakesh', age: 25, city: 'Chennai' }, { name: 'Sara', age: 35, city: 'Chennai' }], 
Salem: [{ name: 'Raj', age: 30, city: 'Salem' }] 
}
*/
''';
var code4 = '''
let numbers = [5, 10, 15, 20, 25];
let largest = numbers.reduce((accumulator, currentValue) => {
  return Math.max(accumulator, currentValue);
});
console.log(largest); // 25
''';
var code3 = '''
let colors = ["red", "blue", "green", "red", "blue", "yellow"];
let colorCounts = colors.reduce((accumulator, currentValue) => {
  if (currentValue in accumulator) {
    accumulator[currentValue]++;
  } else {
    accumulator[currentValue] = 1;
  }
  return accumulator;
}, {});
console.log(colorCounts); // { red: 2, blue: 2, green: 1, yellow: 1 }
''';
var code2 = '''
let nestedArray = [
  [1, 2],
  [3, 4],
  [5, 6],
];
let flattenedArray = nestedArray.reduce((accumulator, currentValue) =>
  accumulator.concat(currentValue)
);
console.log(flattenedArray); // [1, 2, 3, 4, 5, 6]
''';
var code1 = '''
let numbers1 = [1, 2, 3, 4, 5];
let sum = numbers1.reduce(
  (accumulator, currentValue) => accumulator + currentValue
);
console.log(sum); // 15
''';
