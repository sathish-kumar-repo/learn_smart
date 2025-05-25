import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/js/topicName/jsTopics.dart';

class elseIf extends StatefulWidget {
  const elseIf({Key? key}) : super(key: key);

  @override
  State<elseIf> createState() => _elseIfState();
}

class _elseIfState extends State<elseIf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 24,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Else if Statement'),
          const H3('Source Code'),
          Code(title: 'script.js', code: code, type: 'javascript')
        ],
      ),
    );
  }
}

var code = '''
let num = prompt("Enter your Number");

if (num > 0) {
  console.log("positive number");
} else if (num < 0) {
  console.log("negative number");
} else {
  console.log("Zero");
}    
''';
