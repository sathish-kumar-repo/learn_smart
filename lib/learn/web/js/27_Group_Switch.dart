import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/JS/topicName/jsTopics.dart';

class Group_Switch extends StatefulWidget {
  const Group_Switch({Key? key}) : super(key: key);

  @override
  State<Group_Switch> createState() => _Group_SwitchState();
}

class _Group_SwitchState extends State<Group_Switch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 27,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Group Switch'),
          const H3('Source Code'),
          Code(title: 'script.js', code: code, type: 'javascript')
        ],
      ),
    );
  }
}

var code = '''
let letter = "w";

switch (letter) {
  case "a":
  case "e":
  case "i":
  case "o":
  case "u":
  case "A":
  case "E":
  case "I":
  case "O":
  case "U":
    console.log(letter, "is an vowel");
    break;
  default:
    console.log(letter, "is not an vowel");
    break;
}
''';
