import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/JS/topicName/jsTopics.dart';

class pop extends StatefulWidget {
  const pop({Key? key}) : super(key: key);

  @override
  State<pop> createState() => _popState();
}

class _popState extends State<pop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 49,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('pop'),
          const Li(
              'The pop() function in JavaScript is a method of the Array object, it is used to remove the last element from an array and returns the removed element. It modifies the original array in place, meaning that it removes the last element of the original array, and it doesn\'t return a new array.'),
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
[ 'Ram', 'Sam', 'Ravi', 'Kumar' ]
Kumar
[ 'Ram', 'Sam', 'Ravi' ]
Ravi
[ 'Ram', 'Sam' ]
''';
var code1 = '''
// POP in JavaScript.
const users = ["Ram", "Sam", "Ravi", "Kumar"];
console.log(users);

console.log(users.pop());
console.log(users);

console.log(users.pop());
console.log(users);   
''';
