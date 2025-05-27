import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/Python/Pyhton%20Core/topicName/pythonTopics.dart';

class While_Loop extends StatefulWidget {
  const While_Loop({Key? key}) : super(key: key);

  @override
  State<While_Loop> createState() => _While_LoopState();
}

class _While_LoopState extends State<While_Loop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 19,
        topicsName: pythonTopics,
        img: 'Python.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('While Loop'),
          const P(
              'The while loop is repeats a statement or block while its controlling expression is true.The condition can be any Boolean expression. The body of the loop will be executed as long as the conditional expression is true. When condition becomes false, control passes to the next line of code immediately following the loop.'),
          const Li(
              'If the condition to true, the code inside the while loop is executed.'),
          const Li('The condition is evaluated again.'),
          const Li('This process continues until the condition is false.'),
          const Li('When the condition to false, the loop stops.'),
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
1
2
3
4
5
6
7
8
9
10
--------------------
Even No :
2
4
6
8
10
12
14
16
18
20
''';
var code1 = '''
# While Loop
"""
1.While Loop
2.For Loop
"""
i = 1
while i <= 10:
    print(i)
    i += 1
print("--------------------")
print("Even No : ")
n = 20
i = 2
while i <= 20:
    print(i)
    i += 2
''';
