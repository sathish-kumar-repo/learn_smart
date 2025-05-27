import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/Python/Pyhton%20Core/topicName/pythonTopics.dart';

class Assignment_Operators extends StatefulWidget {
  const Assignment_Operators({Key? key}) : super(key: key);

  @override
  State<Assignment_Operators> createState() => _Assignment_OperatorsState();
}

class _Assignment_OperatorsState extends State<Assignment_Operators> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 9,
        topicsName: pythonTopics,
        img: 'Python.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Assignment Operators'),
          const P(
              'Assignment operators are used to assigning value to a variable. The left side operand of the assignment operator is a variable and right side operand of the assignment operator is a value. This operator is used to assign the value on the right to the variable on the left'),
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
125
130
120
1200
120.0
0.0
0.0
0.0
''';
var code1 = '''
# Assignment Operators

"""
=   Assignment
+=	Addition
-=	Subtraction
*=	Multiplication
/=	Division
%=	Modulus
**=	Exponentiation
//=	Floor division
"""
a = 125
print(a)
a += 5  # a=a+5
print(a)
a -= 10  # a=a-10
print(a)
a *= 10  # a=a*10
print(a)
a /= 10
print(a)
a %= 10
print(a)
a **=10
print(a)
a //= 10 
print(a)
''';
