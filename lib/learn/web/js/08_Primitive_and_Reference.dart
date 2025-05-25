import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/js/topicName/jsTopics.dart';

class Primitive_and_Reference extends StatefulWidget {
  const Primitive_and_Reference({Key? key}) : super(key: key);

  @override
  State<Primitive_and_Reference> createState() =>
      _Primitive_and_ReferenceState();
}

class _Primitive_and_ReferenceState extends State<Primitive_and_Reference> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 8,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('The difference between Primitive and Reference Data Types'),
          const P(
              'In JavaScript, there are two types of data types: primitive and reference. '),
          const H3('Primitive Data Types'),
          const Li(
              'String: used to represent text, enclosed in single or double quotes.'),
          const Li(
              'Number: used to represent numeric values, including integers and floating-point numbers.'),
          const Li('Boolean: used to represent true or false values.'),
          const Li(
              'Undefined: used to represent a variable that has been declared but not assigned a value.'),
          const Li(
              'Symbol: a new type in ECMAScript 6, used for creating unique identifiers'),
          const Img(name: 'Primitive_datatype_in_js.jpg', height: 300),
          const H4('Source Code'),
          Code(title: 'script.js', code: code1, type: 'javascript'),
          const H4('Ouput'),
          Code(title: 'terminal', code: codea, type: 'text'),
          const H3('Reference Data Types'),
          const Img(name: 'Reference_datatype_in_js.jpg', height: 300),
          const H4('Source Code'),
          Code(title: 'script.js', code: code2, type: 'javascript'),
          const H4('Ouput'),
          Code(title: 'terminal', code: codeb, type: 'text')
        ],
      ),
    );
  }
}

var codeb = '''
User 1 : { name: 'Sathish Kumar', age: 30 }
User 2 : { name: 'Sathish Kumar', age: 30 }
User 1 : { name: 'Sathish Kumar', age: 25 }
User 2 : { name: 'Sathish Kumar', age: 25 }
Array 1 : [ 10, 20, 30 ]
Array 2 : [ 10, 20, 30 ]
After Pushing element to arr1 :
Array 1 : [ 10, 20, 30, 40 ]
Array 2 : [ 10, 20, 30, 40 ]
''';
var code2 = '''
let people = { name: "Sathish Kumar", age: 30 };  // Object
let numbers = [1, 2, 3, 4, 5];                    // Array
let today = new Date();                           // Object

// Primitive and Refernce datatype

// Objects
let user = { name: "Sathish Kumar", age: 30 }; // Object
let user2 = user;
console.log("User 1 :", user);
console.log("User 2 :", user2);
user.age = 25;
console.log("User 1 :", user);
console.log("User 2 :", user2);

// Array
let arr1 = [10, 20, 30];
let arr2 = arr1;
console.log("Array 1 :", arr1);
console.log("Array 2 :", arr2);
arr1.push(40);
console.log("After Pushing element to arr1 : ");
console.log("Array 1 :", arr1);
console.log("Array 2 :", arr2);
''';
var codea = '''
string
number
boolean
undefined
symbol
A:  10 B:  10
A:  25 B:  10
''';
var code1 = '''
let name = "Sathish Kumar";     // String
let age = 30;                   // Number
let isStudent = false;          // Boolean
let x;                          // Undefined
let id = Symbol();              // Symbol
console.log(typeof name);
console.log(typeof age);
console.log(typeof isStudent);
console.log(typeof x);
console.log(typeof id);

// primitive type
let a = 10;
let b = a;
console.log("A: ", a, "B: ", b);
a = 25;
console.log("A: ", a, "B: ", b);
''';
