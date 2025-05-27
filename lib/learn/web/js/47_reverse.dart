import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/JS/topicName/jsTopics.dart';

class reverse extends StatefulWidget {
  const reverse({Key? key}) : super(key: key);

  @override
  State<reverse> createState() => _reverseState();
}

class _reverseState extends State<reverse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 47,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('reverse'),
          const Li(
              'The reverse() function in JavaScript is a method of the Array object, it is used to reverse the order of the elements in an array. It modifies the original array in place, meaning that it changes the order of the elements in the original array, and it doesn\'t return a new array.'),
          const H4('Syntax'),
          const Li('array.reverse()'),
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
Before Reverse :  [ 1, 2, 3, 4, 5, 6 ]
After Reverse :  [ 6, 5, 4, 3, 2, 1 ]
{ '0': 10, '1': 20, '2': 30, '3': 40, length: 4 }
{ '0': 40, '1': 30, '2': 20, '3': 10, length: 4 }
''';
var code1 = '''
const n = [1, 2, 3, 4, 5, 6];
console.log("Before Reverse : ", n);
n.reverse();
console.log("After Reverse : ", n);

// to reverse the array like object(condition --> array object should have length property)
// Array Element With Length Property
const x = { 0: 10, 1: 20, 2: 30, 3: 40, length: 4 };
console.log(x);

Array.prototype.reverse.call(x);
console.log(x);   
''';
