import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/js/topicName/jsTopics.dart';

class fill extends StatefulWidget {
  const fill({Key? key}) : super(key: key);

  @override
  State<fill> createState() => _fillState();
}

class _fillState extends State<fill> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 44,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('fill()'),
          const Li(
              'The fill() method fills specified elements in an array with a value.Start and end position can be specified. If not, all elements will be filled'),
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
Before Fill :  [ 1, 2, 3, 4, 5, 6 ]
After Fill  :  [ 20, 20, 20, 20, 20, 20 ]
--------
Before Fill :  [ 1, 2, 3, 4, 5, 6 ]
After Fill  :  [ 1, 2, 3, 20, 20, 20 ]
--------
Before Fill :  [
  1, 2, 3, 4,
  5, 6, 7, 8
]
After Fill  :  [
   1, 2, 3, 20,
  20, 6, 7,  8
]
''';
var code1 = '''
// Fill(value,start,end)
// it change the original array

let n = [1, 2, 3, 4, 5, 6];
console.log("Before Fill : ", n);
n.fill(20);
console.log("After Fill  : ", n);

console.log("--------");

n = [1, 2, 3, 4, 5, 6];
console.log("Before Fill : ", n);
n.fill(20, 3);
console.log("After Fill  : ", n);

console.log("--------");

n = [1, 2, 3, 4, 5, 6, 7, 8];
console.log("Before Fill : ", n);
n.fill(20, 3, 5);
console.log("After Fill  : ", n);  
''';
