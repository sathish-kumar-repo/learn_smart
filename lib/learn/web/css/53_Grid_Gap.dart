import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/css/TopicName/cssTopics.dart';

class GridGapProperty extends StatefulWidget {
  const GridGapProperty({Key? key}) : super(key: key);

  @override
  State<GridGapProperty> createState() => _GridGapPropertyState();
}

class _GridGapPropertyState extends State<GridGapProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 52,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Grid Gap'),
          const H3('column-gap'),
          Code(title: 'style.css', code: code1, type: 'css'),
          const H4('Output'),
          const Img(name: 'grid-column-gap.jpg', height: 300),
          //
          const H3('row-gap'),
          Code(title: 'style.css', code: code2, type: 'css'),
          const H4('Output'),
          const Img(name: 'grid-rows-gap.jpg', height: 300),
          //
          const H3('gap'),
          const Note('It is short hand property'),
          Code(title: 'style.css', code: code3, type: 'css'),
          const H4('Output'),
          const Img(name: 'grid-gap.jpg', height: 300),
          const H4('if row gap = column gap'),
          Code(title: 'style.css', code: code4, type: 'css'),
          const H4('Output'),
          const Img(name: 'grid-gap.jpg', height: 300),
        ],
      ),
    );
  }
}

var code4 = '''
.container{
    display: grid;
    height: 600px;
    grid-template: repeat(3,1fr) / repeat(4,1fr);
    gap:20px;
}
''';
var code3 = '''
.container{
    display: grid;
    height: 600px;
    grid-template: repeat(3,1fr) / repeat(4,1fr);
    /* row column*/
    gap:20px 20px;
}
''';
var code2 = '''
.container{
    display: grid;
    height: 600px;
    grid-template: repeat(3,1fr) / repeat(4,1fr);
    row-gap: 20px;
}
''';
var code1 = '''
.container{
    display: grid;
    height: 600px;
    grid-template: repeat(3,1fr) / repeat(4,1fr);
    column-gap: 20px;
}  
''';
