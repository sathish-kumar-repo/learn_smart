import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/JS/topicName/jsTopics.dart';

class forIn extends StatefulWidget {
  const forIn({Key? key}) : super(key: key);

  @override
  State<forIn> createState() => _forInState();
}

class _forInState extends State<forIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 33,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('For in Loop'),
          const H3('Source Code'),
          Code(title: 'script.js', code: code, type: 'javascript')
        ],
      ),
    );
  }
}

var code = '''
//for in loop used in object(that is key and pair)

users = {
  name: "sathish",
  age: 17,
  job: "developer",
};

for (let prop in users) {
  console.log(prop, ":", users[prop]);
}   
''';
