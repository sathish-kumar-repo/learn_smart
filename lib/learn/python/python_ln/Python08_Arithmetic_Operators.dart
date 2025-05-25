import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/python/python_ln/topicName/pythonTopics.dart';

class Arithmetic_Operators extends StatefulWidget {
  const Arithmetic_Operators({Key? key}) : super(key: key);

  @override
  State<Arithmetic_Operators> createState() => _Arithmetic_OperatorsState();
}

class _Arithmetic_OperatorsState extends State<Arithmetic_Operators> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 8,
        topicsName: pythonTopics,
        img: 'Python.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Arithmetic Operators'),
          const P(
              'Arithmetic operators are used to perform mathematical operations like addition, subtraction, multiplication ,division and also python have floor division,exponentiation.'),
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
133
113
1230
12.3
12
3
8
''';
var code1 = '''
# Arithmetic operators
"""
+	Addition
-	Subtraction
*	Multiplication
/	Division
%	Modulus
**	Exponentiation
//	Floor division
"""
a = 123
b = 10
print(a + b)
print(a - b)
print(a * b)
print(a / b)
print(a // b)
print(a % b)
print(2**3)
''';
