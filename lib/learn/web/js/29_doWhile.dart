import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/js/topicName/jsTopics.dart';

class Do extends StatefulWidget {
  const Do({Key? key}) : super(key: key);

  @override
  State<Do> createState() => _DoState();
}

class _DoState extends State<Do> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 29,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Do While Loop'),
          const H3('Source Code'),
          Code(title: 'script.js', code: code, type: 'javascript')
        ],
      ),
    );
  }
}

var code = '''
let table = 22,
  limit = 5,
  i = 1;

do {
  console.log(table + " x " + i + " = " + table * i);
  i++;
} while (i <= limit);  
''';
