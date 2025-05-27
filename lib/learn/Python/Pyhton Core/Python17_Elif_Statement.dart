import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/Python/Pyhton%20Core/topicName/pythonTopics.dart';

class Elif_Statement extends StatefulWidget {
  const Elif_Statement({Key? key}) : super(key: key);

  @override
  State<Elif_Statement> createState() => _Elif_StatementState();
}

class _Elif_StatementState extends State<Elif_Statement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 17,
        topicsName: pythonTopics,
        img: 'Python.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Elif Statement'),
          const P(
              'The elif condition is used to multiple conditional expressions after the if condition or between the if and else conditions. The elif block is executed if the specified condition evaluates to True.'),
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
Enter The Days : 5
Fine Amount :  2.5
''';
var code1 = '''
# elif Statement in Python
"""
0       No Fine
1-5     0.5
5-10    1
10-30   5
>30     Membership Cancel
"""
days = int(input("Enter The Days : "))
if days == 0:
    print("Good No Fine")
elif days >= 1 and days <= 5:
    print("Fine Amount : ", days * 0.5)
elif days > 5 and days <= 10:
    print("Fine Amount : ", days * 1)
elif days > 10 and days <= 30:
    print("Fine Amount : ", days * 5)
else:
    print("Membership Cancel")
''';
