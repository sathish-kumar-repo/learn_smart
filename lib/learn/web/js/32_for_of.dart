import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/js/topicName/jsTopics.dart';

class forOf extends StatefulWidget {
  const forOf({Key? key}) : super(key: key);

  @override
  State<forOf> createState() => _forOfState();
}

class _forOfState extends State<forOf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 32,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('For of Loop'),
          const H3('Source Code'),
          Code(title: 'script.js', code: code, type: 'javascript')
        ],
      ),
    );
  }
}

var code = '''
names = ["sathish", "sam", "sri", "ravi"];
for (let i = 0; i < names.length; i++) {
  console.log(names[i]);
}

// for of loop
console.log("for of loop");
for (let name of names) {
  console.log(name);
}
''';
