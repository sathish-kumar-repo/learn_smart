import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/js/topicName/jsTopics.dart';

class Splice extends StatefulWidget {
  const Splice({Key? key}) : super(key: key);

  @override
  State<Splice> createState() => _SpliceState();
}

class _SpliceState extends State<Splice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 41,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Splice'),
          const Li(
              'method adds and/or removes array elements.This method also overwrites the original array.'),
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
Before Splice :  [
  1, 2, 3, 4,  5,
  6, 7, 8, 9, 10
]
Removed Items :  [
  3, 4, 5,  6,
  7, 8, 9, 10
]
After Splice : [ 1, 2 ]
Before Splice :  [
  1, 2, 3, 4,  5,
  6, 7, 8, 9, 10
]
Removed Items :  [ 3, 4 ]
After Splice : [
  1, 2, 5,  6,
  7, 8, 9, 10
]
Before Splice :  [
  1, 2, 3, 4,  5,
  6, 7, 8, 9, 10
]
Removed Items :  [ 3, 4 ]
[
  1, 2, 25, 36,  5,
  6, 7,  8,  9, 10
]
Before Splice :  [
  1, 2, 3, 4,  5,
  6, 7, 8, 9, 10
]
Removed Items :  [ 3, 4 ]
[ 1, 2, [ 25, 36, 45 ], 5, 6, 7, 8, 9, 10 ]
Before Splice :  [
  1, 2, 3, 4,  5,
  6, 7, 8, 9, 10
]
After Splice : [
  1,  2, 100, 300, 3,
  4,  5,   6,   7, 8,
  9, 10
]
''';
var code1 = '''
/*
  Splice is to Remove Elements in array
  It will change original array
  it is return type function

  removed_element = Splice(start, length, new elements)
*/

const n1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
console.log("Before Splice : ", n1);
let removed_elements = n1.splice(2);
console.log("Removed Items : ", removed_elements);
console.log("After Splice :", n1);

const n2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
console.log("Before Splice : ", n2);
removed_elements = n2.splice(2, 2);
console.log("Removed Items : ", removed_elements);
console.log("After Splice :", n2);

const n3 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
console.log("Before Splice : ", n3);
removed_elements = n3.splice(2, 2, 25, 36);
console.log("Removed Items : ", removed_elements);
console.log(n3);

const m = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
console.log("Before Splice : ", m);
removed_elements = m.splice(2, 2, [25, 36, 45]);
console.log("Removed Items : ", removed_elements);
console.log(m);

const n4 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
console.log("Before Splice : ", n4);

n4.splice(2, 0, 100, 300);
console.log("After Splice :", n4);
''';
