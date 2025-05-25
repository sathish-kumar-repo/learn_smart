import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/python/python_ln/topicName/pythonTopics.dart';

class Handling_Diamond_Problem_in_Python extends StatefulWidget {
  const Handling_Diamond_Problem_in_Python({Key? key}) : super(key: key);

  @override
  State<Handling_Diamond_Problem_in_Python> createState() =>
      _Handling_Diamond_Problem_in_PythonState();
}

class _Handling_Diamond_Problem_in_PythonState
    extends State<Handling_Diamond_Problem_in_Python> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 48,
        topicsName: pythonTopics,
        img: 'Python.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Handling Diamond Problem in Python'),
          const P(
              'The diamond problem occurs when two classes have a common parent class, and another class has both those classes as base classes. The diamond problem is the generally used term for an ambiguity that arises when two classes B and C inherit from a superclass A, and another class D inherits from both B and C.'),
          const Img(name: 'diamond.png', height: 300),
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
I am the display of Class D
''';
var code1 = '''
class A:
    def display(self):
        print("I am the display of Class A")
 
 
class B(A):
    def display(self):
        print("I am the display of Class B")
 
 
class C(A):
    def display(self):
        print("I am the display of Class C")
 
 
class D(B, C):
    def display(self):
        print("I am the display of Class D")
 
 
o = D()
o.display()
''';
