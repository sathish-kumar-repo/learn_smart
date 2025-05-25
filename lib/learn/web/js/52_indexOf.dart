import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/js/topicName/jsTopics.dart';

class indexOf extends StatefulWidget {
  const indexOf({Key? key}) : super(key: key);

  @override
  State<indexOf> createState() => _indexOfState();
}

class _indexOfState extends State<indexOf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 52,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('indexOf'),
          const Li(
              'In JavaScript, the indexOf() function JavaScript is used to search an array for a specific element and return the first index at which the element can be found. If the element is not present in the array, it will return -1.'),
          const H4('Syntax'),
          const Li('array.indexOf(element)'),
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
Index : 0
Index : -1
Index : 3
Index : 7
''';
var code1 = '''
students = ["Tiya", "Aureen", "Joes", "Zara", "Stanley", "Rajesh"];

let i = students.indexOf("Tiya");
console.log("Index : " + i);

i = students.indexOf("sathish");
console.log("Index : " + i); //returns -1 because sathish is not in list

// Also possible in String
let user = "Tutor Joes";
let index = user.indexOf("o");
console.log("Index : " + index);

index = user.indexOf("o", 5);
console.log("Index : " + index);    
''';
