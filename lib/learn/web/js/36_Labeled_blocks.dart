import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/JS/topicName/jsTopics.dart';

class Labeled extends StatefulWidget {
  const Labeled({Key? key}) : super(key: key);

  @override
  State<Labeled> createState() => _LabeledState();
}

class _LabeledState extends State<Labeled> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 36,
        topicsName: javaScriptTopics,
        img: 'js.png',
      ),
      body: MyPage(
        children: [
          const H1('Labeled blocks'),
          const Note(
              'Tutor joes advices mostly avoid the label block because developers feel hardest feel'),
          const P(
              'In JavaScript, labeled blocks are a way to label a block of code using an identifier (label). These labels are used in conjunction with statements like "break" and "continue" to control the flow of execution within nested loops or blocks.'),
          const H3('Source Code'),
          Code(title: 'script.js', code: code1, type: 'javascript'),
          const H4('Ouput'),
          Code(title: 'terminal', code: code2, type: 'text')
        ],
      ),
    );
  }
}

var code2 = '''
Found One Starting with R Rahul
Found One Starting with R Raja
''';
var code1 = '''
//Label block in javaScript
groups = [
  ["Rahul", "Sam", "Ravi"],
  ["Sathish", "Karthi", "Sri"],
  ["Raja", "Banu", "Reeghan"],
];

for (let group of groups) {
  inner: for (let member of group) {
    if (member.startsWith("R")) {
      console.log("Found One Starting with R", member);
      break inner;
    }
  }
}  
''';
