import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/CSS/TopicName/cssTopics.dart';

class VerticalCenterProperty extends StatefulWidget {
  const VerticalCenterProperty({Key? key}) : super(key: key);

  @override
  State<VerticalCenterProperty> createState() => _VerticalCenterPropertyState();
}

class _VerticalCenterPropertyState extends State<VerticalCenterProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 31,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Vertical center in Flex Box'),
          Code(title: 'verticalCenter.css', code: code, type: 'css'),
          const H3('Flex Box Architecture'),
          const Img(name: 'flex-architecture.png', height: 300)
        ],
      ),
    );
  }
}

var code = '''
.container{
    display: flex;
    justify-content: center;
    align-items: center;
}
''';
