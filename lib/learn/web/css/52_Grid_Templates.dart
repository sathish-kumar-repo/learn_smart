import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/css/TopicName/cssTopics.dart';

class GridTemplateProperty extends StatefulWidget {
  const GridTemplateProperty({Key? key}) : super(key: key);

  @override
  State<GridTemplateProperty> createState() => _GridTemplatePropertyState();
}

class _GridTemplatePropertyState extends State<GridTemplateProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 51,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('type'),
          const Note('It is short hand property'),
          Code(title: 'style.css', code: code, type: 'css'),
          const H3('Output'),
          const Img(name: 'grid-template.jpg', height: 300),
        ],
      ),
    );
  }
}

var code = '''
.container{
    display: grid;
    height: 600px;
    /* In shorthand property */
    /* grid-template: row-value / column-value; */
    grid-template: repeat(3,1fr) / repeat(4,1fr);
}
''';
