import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/js/topicName/jsTopics.dart';

class concat extends StatefulWidget {
  const concat({Key? key}) : super(key: key);

  @override
  State<concat> createState() => _concatState();
}

class _concatState extends State<concat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 43,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('concat'),
          const Li(
              'Concatenates (joins) two or more arrays.returns a new array, containing the joined arrays, It does not change the existing arrays.'),
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
[ 10, 20, 30, 40, 50, 60 ]
[
  10, 20, 30, 40, 50,
  60, 70, 80, 90
]
[
  10, 20, 30, 40, 50, 60,
  70, 80, 90, 25, 35, 45,
  55
]
[
  10, 20,  30,  40,  50, 60,
  70, 80,  90,  25,  35, 45,
  55, 'a', 'b', 'c'
]
┌─────────┬────────┐
│ (index) │ Values │
├─────────┼────────┤
│    0    │   10   │
│    1    │   20   │
│    2    │   30   │
│    3    │   40   │
│    4    │   50   │
│    5    │   60   │
│    6    │   70   │
│    7    │   80   │
│    8    │   90   │
│    9    │   25   │
│   10    │   35   │
│   11    │   45   │
│   12    │   55   │
│   13    │  'a'   │
│   14    │  'b'   │
│   15    │  'c'   │
└─────────┴────────┘
''';
var code1 = '''
//concat
const a = [10, 20, 30];
const b = [40, 50, 60];
const c = [70, 80, 90];

let d = a.concat(b);
console.log(d);

d = a.concat(b, c);
console.log(d);

d = a.concat(b, c, 25, 35, 45, 55);
console.log(d);

d = a.concat(b, c, 25, 35, 45, 55, ["a", "b", "c"]);
console.log(d);

console.table(d);   
''';
