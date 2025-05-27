import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/CSS/TopicName/cssTopics.dart';

class flexInlineflexProperty extends StatefulWidget {
  const flexInlineflexProperty({Key? key}) : super(key: key);

  @override
  State<flexInlineflexProperty> createState() => _flexInlineflexPropertyState();
}

class _flexInlineflexPropertyState extends State<flexInlineflexProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 33,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Display flex and inline flex'),
          const H3('display flex'),
          Code(title: 'style.css', code: code1, type: 'css'),
          const H4('Output'),
          const Img(name: 'flex_and_inline_flex.jpg'),
          const H3('display Inline Flex'),
          Code(title: 'style.css', code: code2, type: 'css'),
          const H4('Output'),
          const Img(name: 'flex_and_inline_flex2.jpg'),
        ],
      ),
    );
  }
}

var code2 = '''
.container{
    display: inline-flex;
}
''';
var code1 = '''
.container{
    display: flex;
}
''';
