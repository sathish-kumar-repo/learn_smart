import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/python/python_ln/topicName/pythonTopics.dart';

class Type_Casting extends StatefulWidget {
  const Type_Casting({Key? key}) : super(key: key);

  @override
  State<Type_Casting> createState() => _Type_CastingState();
}

class _Type_CastingState extends State<Type_Casting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 6,
        topicsName: pythonTopics,
        img: 'Python.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Type Casting'),
          const P(
              'In Python, type casting is the process of converting one data type to another. Python is a dynamically-typed language, which means that the data type of a variable can change based on the value assigned to it. However, sometimes you may need to convert a variable from one data type to another.'),
          const P(
              'There are several built-in functions in Python that can be used for type casting:'),
          const Li('int(): Converts a value to an integer.'),
          const Li('float(): Converts a value to a floating-point number.'),
          const Li('str(): Converts a value to a string.'),
          const Li('bool(): Converts a value to a Boolean (True or False).'),
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
Enter The Value of A : 20
Enter The Value of B : 20
Total : 40
''';
var code1 = '''
"""
a = 10.0
print(a)
print(type(a))
b = int(a)
print(b)
print(type(b))

int()
float()
str()
"""
a = int(input("Enter The Value of A : "))
b = int(input("Enter The Value of B : "))
c = a + b
print("Total : " + str(c))
''';
