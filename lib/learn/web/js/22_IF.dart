import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/JS/topicName/jsTopics.dart';

class IF extends StatefulWidget {
  const IF({Key? key}) : super(key: key);

  @override
  State<IF> createState() => _IFState();
}

class _IFState extends State<IF> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 22,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('IF statement'),
          const H3('Source Code'),
          Code(title: 'script.js', code: code, type: 'javascript')
        ],
      ),
    );
  }
}

var code = '''
//In single if statement no need curly braces
let age = prompt("Enter your age");

if (age != null && age >= 18) {
  console.log("You are elligible for vote");
}
''';
