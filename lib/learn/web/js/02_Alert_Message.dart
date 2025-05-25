import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/js/topicName/jsTopics.dart';

class Alert_Message extends StatefulWidget {
  const Alert_Message({Key? key}) : super(key: key);

  @override
  State<Alert_Message> createState() => _Alert_MessageState();
}

class _Alert_MessageState extends State<Alert_Message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 2,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Alert Message'),
          Code(title: 'script.js', code: code, type: 'javascript')
        ],
      ),
    );
  }
}

var code = '''
alert("welcome to js for external file ");
''';
