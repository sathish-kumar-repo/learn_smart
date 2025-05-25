import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/python/python_ln/topicName/pythonTopics.dart';

class IF__Else_Statement extends StatefulWidget {
  const IF__Else_Statement({Key? key}) : super(key: key);

  @override
  State<IF__Else_Statement> createState() => _IF__Else_StatementState();
}

class _IF__Else_StatementState extends State<IF__Else_Statement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 16,
        topicsName: pythonTopics,
        img: 'Python.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('IF - Else Statement'),
          const P(
              'The if-else statement is used to execute both the true part and the false part of a given condition. If the condition is true, the if block code is executed and if the condition is false, the else block code is executed.'),
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
Enter Your Name : Ram
Enter Your Age : 23
Ram  age is  23  Eligible for Vote.
''';
var code1 = '''
# IF Else Statement in Python

name = input("Enter Your Name : ")
age = int(input("Enter Your Age : "))
if age >= 18:
    print(name, " age is ", age, " Eligible for Vote.")
else:
    print(name, " age is ", age, " Not Eligible for Vote.")
''';
