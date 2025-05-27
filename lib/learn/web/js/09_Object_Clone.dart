import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/JS/topicName/jsTopics.dart';

class Object_Clone extends StatefulWidget {
  const Object_Clone({Key? key}) : super(key: key);

  @override
  State<Object_Clone> createState() => _Object_CloneState();
}

class _Object_CloneState extends State<Object_Clone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 9,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Object Clone'),
          const H3('Using the Object.assign() method'),
          const P(
              'The Object.assign() method is used to copy the values of all enumerable own properties from one or more source objects to a target object. It returns the target object.'),
          const H4('Source Code'),
          Code(title: 'script.js', code: code1, type: 'javascript'),
          //
          const H3('Using the Spread Operator'),
          const P(
              'The spread operator allows you to spread the elements of an array into a new array. It creates a shallow copy of the array.'),
          const H4('Source Code'),
          Code(title: 'script.js', code: code2, type: 'javascript'),
          //
          const H3('Using the slice() method'),
          const P(
              'The slice() method creates a shallow copy of the array. It takes no arguments, it will create a copy of the entire array.'),
          const H4('Source Code'),
          Code(title: 'script.js', code: code3, type: 'javascript'),
          //
          const H3('Using the concat() method:'),
          const P(
              'The concat() method creates a new array with the elements of the original array and any additional elements that you pass to it.'),
          const H4('Source Code'),
          Code(title: 'script.js', code: code4, type: 'javascript'),
          //
          const H3('Using the Array.from() method:'),
          const P(
              'The Array.from() method creates a new array with the elements of the original array.'),
          const H4('Source Code'),
          Code(title: 'script.js', code: code5, type: 'javascript'),
          //
          const H3('Using the JSON.parse() and JSON.stringify():'),
          const P(
              'JSON.stringify() method convert the javascript object into json format and JSON.parse() method converts json string into javascript object.'),
          const H4('Source Code'),
          Code(title: 'script.js', code: code6, type: 'javascript'),
        ],
      ),
    );
  }
}

var code6 = '''
let originalArray = [1, 2, 3];
let clonedArray = JSON.parse(JSON.stringify(originalArray));
console.log(clonedArray);  // [1, 2, 3]    
''';
var code5 = '''
let originalArray = [1, 2, 3];
let clonedArray = Array.from(originalArray);
console.log(clonedArray); // [1, 2, 3]   
''';
var code4 = '''
let originalArray = [1, 2, 3];
let clonedArray = [].concat(originalArray);
console.log(clonedArray); // [1, 2, 3]  
''';
var code3 = '''
let originalArray = [1, 2, 3];
let clonedArray = originalArray.slice();
console.log(clonedArray); // [1, 2, 3] 
''';
var code2 = '''
const obj1 = { a: 1, b: 2 };
const obj2 = { c: 3, d: 4 };
const obj3 = { ...obj1, ...obj2 };
console.log(obj3); // { a: 1, b: 2, c: 3, d: 4 }

// Another example
let originalArray = [1, 2, 3];
let clonedArray = [...originalArray];
console.log(clonedArray); // [1, 2, 3]  
''';
var code1 = '''
const obj1 = { a: 1, b: 2 };
const obj2 = { c: 3, d: 4 };
// Object interface
let obj3 = Object.assign({}, obj1, obj2);
console.log(obj3); // { a: 1, b: 2, c: 3, d: 4 }

obj3 = Object.assign({ y: 1, z: 2 }, obj1, obj2);
console.log(obj3);  
''';
