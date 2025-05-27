import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/JS/topicName/jsTopics.dart';

class Conditional_Chains extends StatefulWidget {
  const Conditional_Chains({Key? key}) : super(key: key);

  @override
  State<Conditional_Chains> createState() => _Conditional_ChainsState();
}

class _Conditional_ChainsState extends State<Conditional_Chains> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 18,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Conditional Chains'),
          const H3('Source Code'),
          Code(title: 'script.js', code: code, type: 'javascript')
        ],
      ),
    );
  }
}

var code = '''
// conditional chains

const avg = 75;

const grade = avg >= 90 ? "A grade" : avg >= 80 ? "B grade" : "C grade";
console.log("Grade :", grade);  
''';
