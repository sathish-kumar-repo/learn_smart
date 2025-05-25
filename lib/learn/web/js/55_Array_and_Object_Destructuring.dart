import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/js/topicName/jsTopics.dart';

class Array_and_Object_Destructuring extends StatefulWidget {
  const Array_and_Object_Destructuring({Key? key}) : super(key: key);

  @override
  State<Array_and_Object_Destructuring> createState() =>
      _Array_and_Object_DestructuringState();
}

class _Array_and_Object_DestructuringState
    extends State<Array_and_Object_Destructuring> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 55,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Array and Object Destructuring'),
          const P(
              'Array destructuring in JavaScript is a convenient way to extract values from arrays and assign them to variables. The basic syntax for array destructuring is as follows:'),
          const H3('In Array'),
          const P(
              'For example, if you have an array of numbers and you want to assign the first, second and third elements to separate variables, you can use array destructuring like this:'),
          Code(title: 'script.js', code: code1, type: 'javascript'),
          const H3('In Nested Array'),
          const P(
              'You can also use destructuring to extract elements from nested arrays. For example, you can de-structure an array of arrays like this:'),
          Code(title: 'script.js', code: code2, type: 'javascript'),
          const H3('It is also possible'),
          const P(
              'You can also use destructuring to extract elements from the end of an array like this:'),
          Code(title: 'script.js', code: code3, type: 'javascript'),
          const H3('To skip one or more element'),
          Code(title: 'script.js', code: code4, type: 'javascript'),
          const H3('In Object'),
          const P(
              'For example, if you have an object with properties "name", "age" and "gender" and you want to assign the values of those properties to separate variables, you can use object destructuring like this:'),
          Code(title: 'script.js', code: code5, type: 'javascript'),
          const H3('In Nested Manner'),
          const P(
              'You can also use destructuring to extract values from nested objects. For example, you can de-structure an object with nested objects like this:'),
          Code(title: 'script.js', code: code6, type: 'javascript'),
          const H3('To set default values'),
          const P(
              'You can also use destructuring to set default values for properties that might be missing from the object. For example, you can destructure an object and set default values for properties like this:'),
          Code(title: 'script.js', code: code7, type: 'javascript'),
        ],
      ),
    );
  }
}

var code7 = '''
let { name = "guest", age = 25, gender = "unknown" } = person;
console.log(name); // "John"
console.log(age); // 30
console.log(gender); // "male"
''';
var code6 = '''
let address = {
  street: "Cherry Road",
  city: "Salem",
  state: "Tamil Nadu",
  zip: "636007",
};
let employee = { name: "Tiya", age: 12, gender: "female", address };
let {
  name,
  age,
  gender,
  address: { city, state, zip },
} = employee;
console.log(name); // "Tiya"
console.log(age); // 30
console.log(gender); // "female"
console.log(city); // "Salem"
console.log(state); // "Tamil Nadu"
console.log(zip); // "636007"
''';
var code5 = '''
let person = { name: "Tiya", age: 5, gender: "female" };
let { name, age, gender } = person;
console.log(name); // "Tiya"
console.log(age); // 5
console.log(gender); // "female"
''';
var code4 = '''
let numbers = [10, 20, 30, 40, 50];
let [a, b, c, , d] = numbers;
console.log(a); //10
console.log(b); //20
console.log(d); // 50
''';
var code3 = '''
let numbers = [10, 20, 30, 40, 50];
let [a, b, ...c] = numbers;
console.log(a); //10
console.log(b); //20
console.log(c); // [30,40,50]
''';
var code2 = '''
let nestedArray = [
  [1, 2],
  [3, 4],
  [5, 6],
];
let [[a, b], [c, d], [e, f]] = nestedArray;
console.log(a); //1
console.log(b); //2
console.log(c); //3
console.log(d); //4
console.log(e); //5
console.log(f); //6
''';
var code1 = '''
let numbers = [10, 20, 30, 40, 50];
let [a, b, c] = numbers;
console.log(a); //10
console.log(b); //20
console.log(c); //30
''';
