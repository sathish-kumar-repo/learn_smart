import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/css/TopicName/cssTopics.dart';

class GridRowProperty extends StatefulWidget {
  const GridRowProperty({Key? key}) : super(key: key);

  @override
  State<GridRowProperty> createState() => _GridRowPropertyState();
}

class _GridRowPropertyState extends State<GridRowProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 61,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Grid Row'),
          const P('This Method is Used to merge two or more Rows'),
          const H3('Method - 1'),
          const P('Using Grid Lines to mention'),
          Code(title: 'style.css', code: code1, type: 'css'),
          const H4('Output'),
          const Img(name: 'grid-row-using-grid-lines.png', height: 300),
          //
          const H3('Method - 2'),
          const P('Using Row(that is span) like using in table'),
          Code(title: 'style.css', code: code2, type: 'css'),
          const H4('Output'),
          const Img(name: 'grid-rows-using-span.png', height: 350),
          //
          const H3('Method - 3'),
          const P('In Short Hand Property'),
          Code(title: 'style.css', code: code3, type: 'css'),
          const H4('Output'),
          const H2('Source Code'),
          Code(title: 'style.css', code: code4, type: 'css'),
          const Img(name: 'grid-rows-using-span.png', height: 350),
          const H4('Output'),
          const Img(name: 'grid columns and grid rows.png', height: 300),
        ],
      ),
    );
  }
}

var code4 = '''
.container{
    display:grid;
    grid-template: repeat(3,200px)/repeat(3,200px);
}

.box-1{
    grid-column: 1 / span 2;
    grid-row-start: 1;
    grid-row-end: 3;
    grid-row-end: span 2;

    grid-row: 1 / span 2;
}
''';
var code3 = '''
.box-1{   
   grid-row: 1 / span 2;
}
''';
var code2 = '''
.box-1{
    grid-row-start: 1;
    grid-row-end: span 2;
}
''';
var code1 = '''
.box-1{
    grid-row-start: 1;
    grid-row-end: 3;
}
''';
