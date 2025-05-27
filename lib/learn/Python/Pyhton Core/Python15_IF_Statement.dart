import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/Python/Pyhton%20Core/topicName/pythonTopics.dart';

class IF_Statement extends StatefulWidget {
  const IF_Statement({Key? key}) : super(key: key);

  @override
  State<IF_Statement> createState() => _IF_StatementState();
}

class _IF_StatementState extends State<IF_Statement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 15,
        topicsName: pythonTopics,
        img: 'Python.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('IF Statement'),
          const P(
              'The if statement is the most basic of all the control flow statements. It tells your program to execute a certain section of code only if a particular test evaluates to true. The if statement is written with the if keyword.'),
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
Enter The Number : 34
34  is Even Number
''';
var code1 = '''
# IF Statement in Python

n = int(input("Enter The Number : "))
if n % 2 == 0:
    print(n, " is Even Number")
''';
