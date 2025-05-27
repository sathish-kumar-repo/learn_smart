import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/JS/topicName/jsTopics.dart';

class slice extends StatefulWidget {
  const slice({Key? key}) : super(key: key);

  @override
  State<slice> createState() => _sliceState();
}

class _sliceState extends State<slice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 40,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('slice'),
          const Li('returns selected elements in an array, as a new array.'),
          const Li(
              'selects from a given start, up to a (not inclusive) given end.'),
          const Li('does not change the original array.'),
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
[
  1, 2, 3, 4,  5,
  6, 7, 8, 9, 10
]
Slice : [
  1, 2, 3, 4,  5,
  6, 7, 8, 9, 10
]
Slice(2) : [
  3, 4, 5,  6,
  7, 8, 9, 10
]
Slice(2,5) : [ 3, 4, 5 ]
''';
var code1 = '''
const numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

//slice(start,end)
console.log(numbers);
console.log("Slice :" , numbers.slice());
console.log("Slice(2) :" , numbers.slice(2));
console.log("Slice(2,5) :" , numbers.slice(2, 5));

// Return new Array   
''';
