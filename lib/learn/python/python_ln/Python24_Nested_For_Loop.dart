import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/python/python_ln/topicName/pythonTopics.dart';

class Nested_For_Loop extends StatefulWidget {
  const Nested_For_Loop({Key? key}) : super(key: key);

  @override
  State<Nested_For_Loop> createState() => _Nested_For_LoopState();
}

class _Nested_For_LoopState extends State<Nested_For_Loop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 24,
        topicsName: pythonTopics,
        img: 'Python.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Nested For Loop'),
          const P(
              'The nested loop refers to a loop within a loop, an inner loop within the body of an outer one. Nested loops are useful when for each pass through the outer loop, you need to repeat some action on the elements in the outer loop. The nested loop is a one iteration of the outer loop is first executed, after which the inner loop is executed. The execution of the inner loop continues till the condition described in the inner loop is satisfied.'),
          const H3('Source Code'),
          Code(title: 'index.py', code: code1, type: 'python'),
          const H4('Output'),
          Code(title: 'terminal', code: code2, type: 'text'),
        ],
      ),
    );
  }
}

var code2 = '''
*
**
***
****
*****
----------------
*****
****
***
**
*
----------------
ABCDE
ABCDE
ABCDE
ABCDE
ABCDE
''';
var code1 = '''
# Nested For Loop
"""
*
**
***
****
*****

*****
****
***
**
*

ABCDE
ABCDE
ABCDE
ABCDE
ABCDE

A-Z => 65-90
a-z=> 97-122

"""

for i in range(6):
    for j in range(i):
        print("*",end="")
    print("")
print("----------------")

for i in range(5,0,-1):
    for j in range(i):
        print("*",end="")
    print("")
print("----------------")

for i in range(65,70,1):
    for j in range(65,70,1):
        print(chr(j),end="")
    print("")
''';
