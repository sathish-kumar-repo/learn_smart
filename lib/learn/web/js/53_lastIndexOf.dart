import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/js/topicName/jsTopics.dart';

class lastIndexOf extends StatefulWidget {
  const lastIndexOf({Key? key}) : super(key: key);

  @override
  State<lastIndexOf> createState() => _lastIndexOfState();
}

class _lastIndexOfState extends State<lastIndexOf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 53,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('lastIndexOf'),
          const Li(
              'In JavaScript, the lastIndexOf() function JavaScript is used to search an array or a string for a specific element and return the last index at which the element can be found. If the element is not present in the array or string, it will return -1. The lastIndexOf() function is similar to the indexOf() function, but instead of searching from the beginning of the array or string, it starts searching from the end.'),
          const Note(
              'It is important to note that the lastIndexOf() method checks for strict equality (===) between the elements'),
          const H4('Syntax'),
          const Li('array.lastIndexOf(element)'),
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
0
5
6
29
''';
var code1 = '''
students = ["Tiya", "Aureen", "Joes", "Zara", "Stanley", "Tiya", "Rajesh"];

let i = students.indexOf("Tiya");
console.log(i);
i = students.lastIndexOf("Tiya");
console.log(i);

// Also possible in String
let address = "Tutor Joes Cherry Road Salem Joes";
i = address.indexOf("Joes");
console.log(i);
i = address.lastIndexOf("Joes");
console.log(i);  
''';
