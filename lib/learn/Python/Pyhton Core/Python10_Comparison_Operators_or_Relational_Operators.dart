import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/Python/Pyhton%20Core/topicName/pythonTopics.dart';

class Comparison_Operators_or_Relational_Operators extends StatefulWidget {
  const Comparison_Operators_or_Relational_Operators({Key? key})
      : super(key: key);

  @override
  State<Comparison_Operators_or_Relational_Operators> createState() =>
      _Comparison_Operators_or_Relational_OperatorsState();
}

class _Comparison_Operators_or_Relational_OperatorsState
    extends State<Comparison_Operators_or_Relational_Operators> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 10,
        topicsName: pythonTopics,
        img: 'Python.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Comparison Operators or Relational Operators'),
          const P(
              'A comparison operator in python, also called python relational operators are used to establish some sort of relationship between the two operands. Some of the relevant examples could be less than, greater than or equal to operators. Relational operators compares the values of two operands and returns TRUE or FALSE based on whether the condition is met.'),
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
True
False
False
False
True
True
''';
var code1 = '''
# Comparison Operators or Relational Operators
"""
==	Equal
!=	Not equal
>	Greater than
<	Less than
>=	Greater than or equal to
<=	Less than or equal to

"""
a = 20
b = 20
print(a == b)
print(a != b)
print(a > b)
print(a < b)
print(a >= b)
print(a <= b)
''';
