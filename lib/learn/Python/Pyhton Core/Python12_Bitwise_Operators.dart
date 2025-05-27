import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/Python/Pyhton%20Core/topicName/pythonTopics.dart';

class Bitwise_Operators extends StatefulWidget {
  const Bitwise_Operators({Key? key}) : super(key: key);

  @override
  State<Bitwise_Operators> createState() => _Bitwise_OperatorsState();
}

class _Bitwise_OperatorsState extends State<Bitwise_Operators> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 12,
        topicsName: pythonTopics,
        img: 'Python.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Bitwise Operators'),
          const P(
              'In Python, bitwise operators are used to perform bitwise calculations on integers. The integers are first converted into binary and then operations are performed on bit by bit, hence the name bitwise operators. Then the result is returned in decimal format. Bitwise AND operator: Returns 1 if both the bits are 1 else 0'),
          const H3('Source Code'),
          Code(title: 'index.py', code: code1, type: 'python'),
          const H4('Output'),
          Code(title: 'terminal', code: code2, type: 'text'),
          const Link(
              'https://www.tutorjoes.in/python_programming_tutorial/bitwise_operators_in_python'),
        ],
      ),
    );
  }
}

var code2 = '''
9
61
52
-26
100
6
''';
var code1 = '''
# Bitwise Operators
"""
& 	AND
|	OR
^	XOR
~ 	NOT
<<	Zero fill left shift
>>	Signed right shift
"""

a = 25
b = 45
print(a & b)
print(a | b)
print(a ^ b)
print(~a)
print(a << 2)
print(a >> 2)
''';
