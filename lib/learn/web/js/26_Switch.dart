import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/JS/topicName/jsTopics.dart';

class Switch extends StatefulWidget {
  const Switch({Key? key}) : super(key: key);

  @override
  State<Switch> createState() => _SwitchState();
}

class _SwitchState extends State<Switch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 26,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Switch Statement'),
          const H3('Source Code'),
          Code(title: 'script.js', code: code, type: 'javascript')
        ],
      ),
    );
  }
}

var code = '''
let num = 2;

switch (num) {
  case 1:
    console.log("One");
    break;
  case 2:
    console.log("Two");
    break;
  case 3:
    console.log("Three");
    break;
  default:
    console.log("Invalid");
    break;
}  
''';
