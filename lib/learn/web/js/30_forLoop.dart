import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/JS/topicName/jsTopics.dart';

class For extends StatefulWidget {
  const For({Key? key}) : super(key: key);

  @override
  State<For> createState() => _ForState();
}

class _ForState extends State<For> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 30,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('For Loop'),
          const H3('Source Code'),
          Code(title: 'script.js', code: code, type: 'javascript')
        ],
      ),
    );
  }
}

var code = '''
for (let i = 1; i <= 10; i++) {
  console.log(i);
}

let arr = [];
for (let i = 0; i < 100; i++) {
  arr.push(i);
}
console.log(arr);  
''';
