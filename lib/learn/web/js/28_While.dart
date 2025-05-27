import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/JS/topicName/jsTopics.dart';

class While extends StatefulWidget {
  const While({Key? key}) : super(key: key);

  @override
  State<While> createState() => _WhileState();
}

class _WhileState extends State<While> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 28,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('While Loop'),
          const H3('Source Code'),
          Code(title: 'script.js', code: code, type: 'javascript')
        ],
      ),
    );
  }
}

var code = '''
let i = 1;  //initialization
while(i <= 10)  //condition check
{
    console.log(i);
    i++;   //increment
}    
''';
