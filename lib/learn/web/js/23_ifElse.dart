import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/js/topicName/jsTopics.dart';

class ifElse extends StatefulWidget {
  const ifElse({Key? key}) : super(key: key);

  @override
  State<ifElse> createState() => _ifElseState();
}

class _ifElseState extends State<ifElse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 23,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('IF Else Statement'),
          const H3('Source Code'),
          Code(title: 'script.js', code: code, type: 'javascript')
        ],
      ),
    );
  }
}

var code = '''
let age = prompt("Enter your age");

if (age != null && age >= 18) {
  console.log("You are elligible for vote");
} else {
  console.log("You are not elligible for vote");
}
''';
