import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/CSS/TopicName/cssTopics.dart';

class GridInlineGridProperty extends StatefulWidget {
  const GridInlineGridProperty({Key? key}) : super(key: key);

  @override
  State<GridInlineGridProperty> createState() => _GridInlineGridPropertyState();
}

class _GridInlineGridPropertyState extends State<GridInlineGridProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 48,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Display Grid and Inline Grid'),
          const H3('display:gird;'),
          const Note(
              'Container width take whole page and block level element taa irukum'),
          Code(title: 'style.css', code: code1, type: 'css'),
          const H4('Output'),
          const Img(name: 'grid-basic-code (1).jpg', height: 300),
          //
          const H3('display:inline-gird;'),
          const Note(
              'Content width athaa maathri maaridum and single column layout and no block level element'),
          Code(title: 'style.css', code: code2, type: 'css'),
          const H4('Output'),
          const Img(name: 'grid.jpg', height: 300),
        ],
      ),
    );
  }
}

var code2 = '''
.container{
    display:inline-gird;
}
''';
var code1 = '''
.container{
    display:grid;
}
''';
