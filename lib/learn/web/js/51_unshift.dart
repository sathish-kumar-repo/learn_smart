import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/JS/topicName/jsTopics.dart';

class unshift extends StatefulWidget {
  const unshift({Key? key}) : super(key: key);

  @override
  State<unshift> createState() => _unshiftState();
}

class _unshiftState extends State<unshift> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 51,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('unshift'),
          const Li(
              'In JavaScript, the unshift() function is used to add one or more elements to the beginning of an array and returns the new length of the array. It modifies the original array by adding new elements to the beginning of the array.'),
          const H4('Syntax'),
          const Li('array.unshift(element1,element2.....elementX)'),
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
Before unshift :  [ 'Kumar', 'Aureen', 'Joes', 'Zara', 'Stanley', 'Rajesh' ]
Length :  7
After unshift :  [
  'Tiya',   'Kumar',
  'Aureen', 'Joes',
  'Zara',   'Stanley',
  'Rajesh'
]
Length :  9
After unshift :  [
  'Riya',   'Diya',
  'Tiya',   'Kumar',
  'Aureen', 'Joes',
  'Zara',   'Stanley',
  'Rajesh'
]
''';
var code1 = '''
// Unshift()
// Add First element at start
students = ["Kumar", "Aureen", "Joes", "Zara", "Stanley", "Rajesh"];
console.log("Before unshift : ", students);

let len = students.unshift("Tiya");
console.log("Length : ", len);
console.log("After unshift : ", students);

// Mulitiple Values
len = students.unshift("Riya", "Diya");
console.log("Length : ", len);
console.log("After unshift : ", students);  
''';
