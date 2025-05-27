import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/CSS/TopicName/cssTopics.dart';

class FlexBoxGapProperty extends StatefulWidget {
  const FlexBoxGapProperty({Key? key}) : super(key: key);

  @override
  State<FlexBoxGapProperty> createState() => _FlexBoxGapPropertyState();
}

class _FlexBoxGapPropertyState extends State<FlexBoxGapProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 37,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Flex Box Gap'),
          const H3('Column Gap'),
          Code(title: 'style.css', code: code1, type: 'css'),
          const H4('Output'),
          const Img(name: 'column-gap.jpg'),
          //
          const H3('Row Gap'),
          Code(title: 'style.css', code: code2, type: 'css'),
          const H4('Output'),
          const Img(name: 'row-gap.jpg'),
          //
          const H3('Gap that is short hand'),
          Code(title: 'style.css', code: code3, type: 'css'),
          const H4('Output'),
          const Img(name: 'gap.jpg'),
          //
          const H3('if row gap = column gap'),
          Code(title: 'style.css', code: code4, type: 'css'),
        ],
      ),
    );
  }
}

var code4 = '''
.container{
    display: flex;   
    flex-wrap: wrap;
    gap: 40px;
}
''';
var code3 = '''
.container{
    display: flex;   
    flex-wrap: wrap;
    /* In single line */
    gap: 40px 20px;
    /* row column */
}
''';
var code2 = '''
.container{
    display: flex;
    column-gap: 20px;

    flex-wrap: wrap;
    row-gap: 20px;
}
''';
var code1 = '''
.container{
    display: flex;
    column-gap: 20px;
}
''';
