import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/js/topicName/jsTopics.dart';

class join extends StatefulWidget {
  const join({Key? key}) : super(key: key);

  @override
  State<join> createState() => _joinState();
}

class _joinState extends State<join> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 46,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('join'),
          const Li(
              'The join() function in JavaScript is a method of the Array object, it is used to join all elements of an array into a single string. The elements of the array are separated by a specified delimiter or separator, which can be a string or a character.'),
          const H3('Source Code'),
          Code(title: 'script.js', code: code1, type: 'javascript'),
          const H4('Syntax'),
          const Li('array.join(separator)'),
          const H4('Ouput'),
          Code(title: 'terminal', code: code2, type: 'text')
        ],
      ),
    );
  }
}

var code2 = '''
[ 'Pen', 'Pencil', 'Eraser', 'Box' ]
Pen,Pencil,Eraser,Box
Pen|Pencil|Eraser|Box
Pen | Pencil | Eraser | Box
''';
var code1 = '''
//array.join(separator)
// array element to String

const products = ["Pen", "Pencil", "Eraser", "Box"];
console.log(products);

console.log(products.join()); // Deafult , as Separator
console.log(products.join("|")); // Pipe | as Separator
console.log(products.join(" | ")); // Pipe | as Separator
''';
