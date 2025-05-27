import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/Python/Pyhton%20Core/topicName/pythonTopics.dart';

class Membership_operators extends StatefulWidget {
  const Membership_operators({Key? key}) : super(key: key);

  @override
  State<Membership_operators> createState() => _Membership_operatorsState();
}

class _Membership_operatorsState extends State<Membership_operators> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 14,
        topicsName: pythonTopics,
        img: 'Python.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Membership operators'),
          const P(
              'Membership operators are used to test if a sequence is presented in an object. The use membership operators to check whether a value or variable exists in a sequence (string, list, tuples, sets, dictionary) or not. They are two membership python operators in and not in. The in Operator is checks if a value is a member of a sequence. The not in Operator is checks if a value is not a member of a sequence.'),
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
False
True
''';
var code1 = '''
a=[10,25,45,88]
print(22 in a)
print(22 not in a)
''';
