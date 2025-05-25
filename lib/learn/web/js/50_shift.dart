import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/js/topicName/jsTopics.dart';

class shift extends StatefulWidget {
  const shift({Key? key}) : super(key: key);

  @override
  State<shift> createState() => _shiftState();
}

class _shiftState extends State<shift> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 50,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('shift'),
          const Li(
              'The shift() function in JavaScript is a method of the Array object, is used to remove and return the first element of an array. It modifies the original array and changes its length. If the array is empty, undefined is returned.'),
          const H4('Syntax'),
          const Li('array.shift()'),
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
Before shift :  [ 'Kumar', 'Aureen', 'Joes', 'Zara', 'Stanley', 'Rajesh' ]
After shift :  [ 'Aureen', 'Joes', 'Zara', 'Stanley', 'Rajesh' ]
Removed Element :  Kumar
Before shift :  [ 'Aureen', 'Joes', 'Zara', 'Stanley', 'Rajesh' ]
After shift :  [ 'Joes', 'Zara', 'Stanley', 'Rajesh' ]
Removed Element :  Aureen
''';
var code1 = '''
// Shift()
let students = ["Kumar", "Aureen", "Joes", "Zara", "Stanley", "Rajesh"];

console.log("Before shift : ", students);
let element = students.shift();
console.log("After shift : ", students);
console.log("Removed Element : ", element);

console.log("Before shift : ", students);
element = students.shift();
console.log("After shift : ", students);
console.log("Removed Element : ", element);    
''';
