import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/JS/topicName/jsTopics.dart';

class BandC extends StatefulWidget {
  const BandC({Key? key}) : super(key: key);

  @override
  State<BandC> createState() => _BandCState();
}

class _BandCState extends State<BandC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 35,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Break and Continue'),
          const H2('Break'),
          const H3('Source Code'),
          Code(title: 'script.js', code: code1, type: 'javascript'),
          const H2('Continue'),
          const H3('Source Code'),
          Code(title: 'script.js', code: code2, type: 'javascript')
        ],
      ),
    );
  }
}

var code2 = '''
//continue
for (let i = 0; i <= 10; i++) {
  if (i == 4) {
    continue;
  }
  console.log(i);
}   
''';
var code1 = '''
//break
for (let i = 0; i <= 10; i++) {
  console.log(i);
  if (i == 4) {
    break;
  }
}  
''';
