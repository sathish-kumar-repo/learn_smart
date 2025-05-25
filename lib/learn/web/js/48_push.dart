import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/js/topicName/jsTopics.dart';

class push extends StatefulWidget {
  const push({Key? key}) : super(key: key);

  @override
  State<push> createState() => _pushState();
}

class _pushState extends State<push> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 48,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('push'),
          const Li(
              'The push() function in JavaScript is a method of the Array object, it is used to add one or more elements to the end of an array. It modifies the original array in place, meaning that it adds new elements to the end of the original array, and it doesn\'t return a new array.'),
          const H4('Syntax'),
          const Li('array.push(element1, element2, ..., elementX)'),
          const H3('Source Code'),
          Code(title: 'script.js', code: code1, type: 'javascript'),
          const H4('Ouput'),
          Code(title: 'terminal', code: code2, type: 'text')
        ],
      ),
    );
  }
}

var code2 = '''
[ 1, 2, 3, 4, 5 ]
6
[ 1, 2, 3, 4, 5, 60 ]
10
[
   1,  2,  3,  4,   5,
  60, 70, 85, 90, 100
]
[ 'Apple' ]
[ 'Apple', 'Orange' ]
[ 'Apple', 'Orange', 'Banana', 'Pineapple' ]
[ 'Ram', 'Sam', 'Ravi', 'Rajesh', 'Kumar' ]
''';
var code1 = '''
let n = [1, 2, 3, 4, 5];
console.log(n);

console.log(n.push(60)); // it returns length but python returns none
console.log(n);

console.log(n.push(70, 85, 90, 100));
console.log(n);

let fruits = ["Apple"];
console.log(fruits);

fruits.push("Orange");
console.log(fruits);

fruits.push("Banana", "Pineapple");
console.log(fruits);

// Merging Two Arrays
let users1 = ["Ram", "Sam", "Ravi"];
let users2 = ["Rajesh", "Kumar"];

users1.push(...users2);
console.log(users1);   
''';
