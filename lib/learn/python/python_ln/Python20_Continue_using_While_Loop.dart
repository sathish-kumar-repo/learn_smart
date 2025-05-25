import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/python/python_ln/topicName/pythonTopics.dart';

class Continue_using_While_Loop extends StatefulWidget {
  const Continue_using_While_Loop({Key? key}) : super(key: key);

  @override
  State<Continue_using_While_Loop> createState() =>
      _Continue_using_While_LoopState();
}

class _Continue_using_While_LoopState extends State<Continue_using_While_Loop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 20,
        topicsName: pythonTopics,
        img: 'Python.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Continue using While Loop'),
          const P(
              'The continue statement instructs a loop to continue to the next iteration. The continue statement is used to skip the remaining statements of the current loop and go to the next iteration.'),
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
3
5
7
9
11
13
15
17
19
''';
var code1 = '''
# Continue Statement
i = 1
while i <= 20:
  if i % 2 == 0:
    i = i + 1
    continue;
  print(i)
  i += 1
''';
