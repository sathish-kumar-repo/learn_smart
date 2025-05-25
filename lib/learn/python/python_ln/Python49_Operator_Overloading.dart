import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/python/python_ln/topicName/pythonTopics.dart';

class Operator_Overloading extends StatefulWidget {
  const Operator_Overloading({Key? key}) : super(key: key);

  @override
  State<Operator_Overloading> createState() => _Operator_OverloadingState();
}

class _Operator_OverloadingState extends State<Operator_Overloading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 49,
        topicsName: pythonTopics,
        img: 'Python.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Operator Overloading'),
          const P(
              'Operator overloading in Python is the ability to change the behavior of operators for user-defined data types. This is done by defining special methods for the operators in question. For example, the + operator can be redefined for a user-defined class to perform some specific operation. The special method that is used to overload the + operator is __add__(). Similarly, other operators like -, *, /, //, %, **, <, >, ==, != etc. can be overloaded using special methods like __sub__(), __mul__(), __truediv__(), __floordiv__(), __mod__(), __pow__(), __lt__(), __gt__(), __eq__(), __ne__() respectively.'),
          const H3('Source Code'),
          Code(title: 'index.py', code: code1, type: 'python'),
          const H4('Output'),
          Code(title: 'terminal', code: code2, type: 'text'),
          const Link(
              'https://www.geeksforgeeks.org/operator-overloading-in-python/'),
        ],
      ),
    );
  }
}

var code2 = '''
Total      :  30
Difference :  -10
30
-10
30
-10
''';
var code1 = '''
"""
a = 10
b = 20
print(a + b)
 
a = "Sathish"
b = "Kumar"
print(a + b)
 
"""


class Addition:
    def __init__(self, a):
        self.a = a

    def __add__(o1, o2):
        return o1.a + o2.a

    def __sub__(o1, o2):
        return o1.a - o2.a


o1 = Addition(10)
o2 = Addition(20)

print("Total      : ", (o1 + o2))
print("Difference : ", (o1 - o2))
# Actual working when Binary Operator is used.
print(Addition.__add__(o1, o2))
print(Addition.__sub__(o1, o2))
# And can also be Understand as :
print(o1.__add__(o2))
print(o1.__sub__(o2))

"""
Operator	Magic Method
+	__add__(self, other)
-	__sub__(self, other)
*	__mul__(self, other)
/	__truediv__(self, other)
//	__floordiv__(self, other)
%	__mod__(self, other)
**	__pow__(self, other)
>>	__rshift__(self, other)
<<	__lshift__(self, other)
&	__and__(self, other)
|	__or__(self, other)
^	__xor__(self, other)
 
Comparison Operators :
Operator	Magic Method
<	__LT__(SELF, OTHER)
>	__GT__(SELF, OTHER)
<=	__LE__(SELF, OTHER)
>=	__GE__(SELF, OTHER)
==	__EQ__(SELF, OTHER)
!=	__NE__(SELF, OTHER)
 
Assignment Operators :
Operator	Magic Method
-=	__ISUB__(SELF, OTHER)
+=	__IADD__(SELF, OTHER)
*=	__IMUL__(SELF, OTHER)
/=	__IDIV__(SELF, OTHER)
//=	__IFLOORDIV__(SELF, OTHER)
%=	__IMOD__(SELF, OTHER)
**=	__IPOW__(SELF, OTHER)
>>=	__IRSHIFT__(SELF, OTHER)
<<=	__ILSHIFT__(SELF, OTHER)
&=	__IAND__(SELF, OTHER)
|=	__IOR__(SELF, OTHER)
^=	__IXOR__(SELF, OTHER)
 
Unary Operators :
Operator	Magic Method
-	__NEG__(SELF, OTHER)
+	__POS__(SELF, OTHER)
~	__INVERT__(SELF, OTHER)
 
"""
''';
