import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/JS/topicName/jsTopics.dart';

class ForEachEg extends StatefulWidget {
  const ForEachEg({Key? key}) : super(key: key);

  @override
  State<ForEachEg> createState() => _ForEachEgState();
}

class _ForEachEgState extends State<ForEachEg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 62,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Exploring the forEach method'),
          const P(
              'The forEach method in JavaScript is a powerful tool for iterating over arrays. It allows you to apply a callback function to each element in an array, making it a great option for performing actions such as filtering, printing, or manipulating elements.'),
          const H3(
              '1. Example of using the forEach method to print each element of an array:'),
          Code(title: 'script.js', code: code1, type: 'javascript'),
          const H3(
              '2. Example of using the forEach method to sum all elements of an array:'),
          Code(title: 'script.js', code: code2, type: 'javascript'),
          const H3(
              '3. Example of using the forEach method to create a new array from an existing one:'),
          Code(title: 'script.js', code: code3, type: 'javascript'),
          const H3(
              '4. Example of using the forEach method to find the max element of an array:'),
          Code(title: 'script.js', code: code4, type: 'javascript'),
          const H3(
              '5. Example of using the forEach method to calculate the average of an array:'),
          Code(title: 'script.js', code: code5, type: 'javascript'),
          const H3(
              '6. Example of using the forEach method to filter an array:'),
          Code(title: 'script.js', code: code6, type: 'javascript'),
          const H3(
              '7. Example of using the forEach method to update elements of an array:'),
          Code(title: 'script.js', code: code7, type: 'javascript'),
          const H3(
              '8. Example of using the forEach method to to remove elements from an array:'),
          Code(title: 'script.js', code: code8, type: 'javascript'),
          const H3(
              '9. Example of using the forEach method to check if an element exists in an array:'),
          Code(title: 'script.js', code: code9, type: 'javascript'),
          const H3(
              '10. Example of using the forEach method to check concat array element:'),
          Code(title: 'script.js', code: code10, type: 'javascript'),
          const H4('Ouput for all code'),
          Code(title: 'terminal', code: output, type: 'text')
        ],
      ),
    );
  }
}

var output = '''
apple
banana
cherry
15
[ 2, 4, 6, 8, 10 ]
5
3
3
[ 2, 4, 6, 8, 10 ]
[ 'JOHN', 'MIKE', 'BOB', 'JANE' ]
[
  1, 2, 3, 4,
  5, 7, 9
]
true
hello world 
''';
var code10 = '''
const words = ["hello", "world"];
let concat = "";
words.forEach((word) => {
  concat += word + " ";
});
console.log(concat); // "hello world "
''';
var code9 = '''
const fruits1 = ["apple", "banana", "cherry"];
let exists = false;
fruits1.forEach((fruit) => {
  if (fruit === "banana") {
    exists = true;
  }
});
console.log(exists); // true
''';
var code8 = '''
const numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
numbers.forEach((number, index) => {
  if (number > 5) {
    numbers.splice(index, 1);
  }
});
console.log(numbers); // [1, 2, 3, 4, 5]
''';
var code7 = '''
const names = ["John", "Mike", "Bob", "Jane"];
names.forEach((name, index) => {
  names[index] = name.toUpperCase();
});
console.log(names); // ['JOHN', 'MIKE', 'BOB', 'JANE']
''';
var code6 = '''
const numbers4 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
const evenNumbers = [];
numbers4.forEach((number) => {
  if (number % 2 === 0) {
    evenNumbers.push(number);
  }
});
console.log(evenNumbers); // [2, 4, 6, 8, 10]
''';
var code5 = '''
const numbers5 = [1, 2, 3, 4, 5];
let tot = 0;
let count = 0;
numbers5.forEach((number) => {
  tot += number;
  count++;
});
console.log(tot / count); // 3
console.log(tot / numbers5.length); // 3
''';
var code4 = '''
const numbers3 = [1, 2, 3, 4, 5];
let max = numbers3[0];
numbers3.forEach((number) => {
  if (number > max) {
    max = number;
  }
});
console.log(max); // 5
''';
var code3 = '''
const numbers2 = [1, 2, 3, 4, 5];
const doubledNumbers = [];
numbers2.forEach((number) => {
  doubledNumbers.push(number * 2);
});
console.log(doubledNumbers); // [2, 4, 6, 8, 10]
''';
var code2 = '''
const numbers1 = [1, 2, 3, 4, 5];
let total = 0;
numbers1.forEach((number) => {
  total += number;
});
console.log(total); // 15
''';
var code1 = '''
const fruits = ["apple", "banana", "cherry"];
fruits.forEach((fruit) => console.log(fruit));
''';
