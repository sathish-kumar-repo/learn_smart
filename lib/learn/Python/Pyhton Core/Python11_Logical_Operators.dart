import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/Python/Pyhton%20Core/topicName/pythonTopics.dart';

class Logical_Operators extends StatefulWidget {
  const Logical_Operators({Key? key}) : super(key: key);

  @override
  State<Logical_Operators> createState() => _Logical_OperatorsState();
}

class _Logical_OperatorsState extends State<Logical_Operators> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 11,
        topicsName: pythonTopics,
        img: 'Python.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Logical Operators'),
          const P(
              'Logical operators are used to combine multiple conditions in a single expression in Python. The three logical operators in Python are and, or, and not.'),
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
False
True
True
''';
var code1 = '''
# Logical Operators in Python
"""
and
or
not

"""
a = 25
print(a >= 10 and a <= 20)
print(a >= 10 or a <= 20)
print(not(a >=  10 and a <= 20))
''';
