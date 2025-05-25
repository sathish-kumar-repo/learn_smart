import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/Course16_CSS100TJAnimation/topicName/css100TJAnimation.dart';

class Project1 extends StatefulWidget {
  const Project1({Key? key}) : super(key: key);

  @override
  State<Project1> createState() => _Project1State();
}

class _Project1State extends State<Project1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 1,
        topicsName: tutorJoes100CssAnimationTopics,
        img: 'cssAnimationI.jpeg',
      ),
      body: MyPage(
        children: [
          const H1('type'),
          const H3('Source Code'),
          Code(title: 'index.html', code: code1, type: 'html'),
          Code(title: 'style.css', code: code2, type: 'css'),
          Code(title: 'script.js', code: code3, type: 'javascript'),
          const H3('Output'),
          const Img(name: 'name'),
        ],
      ),
    );
  }
}

var code3 = '''''';
var code2 = '''''';
var code1 = '''''';
