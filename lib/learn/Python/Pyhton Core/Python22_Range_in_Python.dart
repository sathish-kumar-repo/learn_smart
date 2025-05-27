import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/Python/Pyhton%20Core/topicName/pythonTopics.dart';

class Range_in_Python extends StatefulWidget {
  const Range_in_Python({Key? key}) : super(key: key);

  @override
  State<Range_in_Python> createState() => _Range_in_PythonState();
}

class _Range_in_PythonState extends State<Range_in_Python> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 22,
        topicsName: pythonTopics,
        img: 'Python.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Range in Python'),
          const P(
              'The range() function creates an iterator that generates a sequence of numbers within a given range.'),
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
[0, 1, 2, 3, 4]
[2, 3, 4]
[0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20]
[1, 3, 5, 7, 9, 11, 13, 15, 17, 19]
''';
var code1 = '''
# Range in Python
"""
1-5  =>1,2,3,4,5
0-5 =>2,4  +2
range(5)  =>0,1,2,3,4
range(2,5)  =>
"""

print(list(range(5)))
print(list(range(2, 5)))  # n-1
print(list(range(0, 21, 2)))
print(list(range(1, 20, 2)))
''';
