import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/Python/Pyhton%20Core/topicName/pythonTopics.dart';

class Single_and_Multiline_Commend extends StatefulWidget {
  const Single_and_Multiline_Commend({Key? key}) : super(key: key);

  @override
  State<Single_and_Multiline_Commend> createState() =>
      _Single_and_Multiline_CommendState();
}

class _Single_and_Multiline_CommendState
    extends State<Single_and_Multiline_Commend> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 5,
        topicsName: pythonTopics,
        img: 'Python.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Single and Multiline Commend'),
          const P(
              'In Python, there are two types of comments: single-line and multi-line.'),
          const Li(
              'Single-line comments start with a hash symbol (#) and extend to the end of the line:'),
          const Li(
              'Multi-line comments start and end with three quotation marks (""").'),
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
30
''';
var code1 = '''
# Basic Program in Python
# Basic Program in Python
# Basic Program in Python
\'\'\'
Basic Program in Python
Basic Program in Python
Basic Program in Python
Basic Program in Python
Basic Program in Python
\'\'\'
a = 10
b = 20
c = a + b
print(c)
''';
