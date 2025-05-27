import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/JS/topicName/jsTopics.dart';

class includes extends StatefulWidget {
  const includes({Key? key}) : super(key: key);

  @override
  State<includes> createState() => _includesState();
}

class _includesState extends State<includes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 45,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('includes'),
          const Li(
              'This method returns true if an array contains a specified value.'),
          const Li('This method returns false if the value is not found'),
          const Li('This is also case sensitive.'),
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
true
false
false
''';
var code1 = '''
// Includes(value,start_index)
const products = ["Pen", "Pencil", "Eraser", "Box", "Pen"];

let result = products.includes("Pen");
console.log(result);

result = products.includes("Scale");
console.log(result);

result = products.includes("Pencil", 2);
console.log(result);   
''';
