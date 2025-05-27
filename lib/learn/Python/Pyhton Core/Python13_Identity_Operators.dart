import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/Python/Pyhton%20Core/topicName/pythonTopics.dart';

class Identity_Operators extends StatefulWidget {
  const Identity_Operators({Key? key}) : super(key: key);

  @override
  State<Identity_Operators> createState() => _Identity_OperatorsState();
}

class _Identity_OperatorsState extends State<Identity_Operators> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 13,
        topicsName: pythonTopics,
        img: 'Python.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Identity Operators'),
          const P(
              'Identity operators are used to compare the objects, not if they are equal, but if they are actually the same object, with the same memory location. th operators test if the two operands share an identity. We have two identity operators is and is not. The is operators test If two operands have the same identity, it returns True. Otherwise, it returns False.'),
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
3031834841600
3031834841600
3031836292672
True
False
True
False
True
False
''';
var code1 = '''
"""
is
is not
"""
a = [1,2]
b = [1,2]
c = a
print(id(a)) # two object instance show same memory location
print(id(c)) # two object instance show same memory location
print(id(b))

# To check the object instance are equal or not
print(a is c)
print(a is b)

# To check the value are equal or not
print(a == b)

# Opposite
print(a is not c)
print(a is not b)
print(a != b)
''';
