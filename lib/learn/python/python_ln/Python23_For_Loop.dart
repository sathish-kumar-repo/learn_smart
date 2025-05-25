import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/python/python_ln/topicName/pythonTopics.dart';

class For_Loop extends StatefulWidget {
  const For_Loop({Key? key}) : super(key: key);

  @override
  State<For_Loop> createState() => _For_LoopState();
}

class _For_LoopState extends State<For_Loop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 23,
        topicsName: pythonTopics,
        img: 'Python.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('For Loop'),
          const P(
              'The for loop is used to repeat a specific block of code which you want to repeat a fixed number of times. The for loop is a control flow statement that is used to repeatedly execute a group of statements as long as the condition is satisfied.'),
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
0
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
Enter a No : 3
Enter a No : 2
5
Enter a No : 2
Enter a No : 2
4
Enter a No : 3
Enter a No : 3
6
Enter a No : 3
Enter a No : 3
6
Enter a No : 3
Enter a No : 3
6
''';
var code1 = '''
# For Loop in Python
for i in range(0, 21, 2):
    print(i)

for i in range(5):
    a=int(input("Enter a No : "))
    b=int(input("Enter a No : "))
    print(a+b)
''';
