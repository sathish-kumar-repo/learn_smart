import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/python/python_ln/topicName/pythonTopics.dart';

class Break_using_While_Loop extends StatefulWidget {
  const Break_using_While_Loop({Key? key}) : super(key: key);

  @override
  State<Break_using_While_Loop> createState() => _Break_using_While_LoopState();
}

class _Break_using_While_LoopState extends State<Break_using_While_Loop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 21,
        topicsName: pythonTopics,
        img: 'Python.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Break using While Loop'),
          const P(
              'The break statements are your way of asking the loop to stop and execute the next statement. When a break statement is encountered inside a loop, the loop is immediately terminated and the program control resumes at the next statement following the loop'),
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
''';
var code1 = '''
# Break Statement
i = 1
while i <= 20:
  if i==7:
    break
  print(i)
  i += 1
''';
