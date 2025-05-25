import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/css/TopicName/cssTopics.dart';

class GridAutoFlowProperty extends StatefulWidget {
  const GridAutoFlowProperty({Key? key}) : super(key: key);

  @override
  State<GridAutoFlowProperty> createState() => _GridAutoFlowPropertyState();
}

class _GridAutoFlowPropertyState extends State<GridAutoFlowProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 59,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Grid Auto Flow'),
          const H3('grid-auto-flow: row;'),
          Code(title: 'style.css', code: code1, type: 'css'),
          const H4('Output'),
          const Img(name: 'grid-auto-flow-row.png', height: 300),
          //
          const H3('To give particular size for row (grid-auto-rows:)'),
          Code(title: 'style.css', code: code2, type: 'css'),
          const H4('Output'),
          const Img(name: 'to give size in row.png', height: 300),
          //
          const H3('grid-auto-flow: column'),
          Code(title: 'style.css', code: code3, type: 'css'),
          const H4('Output'),
          const Img(name: 'grid-auto-flow-column.png', height: 300),
          //
          const H3('To give particular size for column (grid-auto-column:)'),
          Code(title: 'style.css', code: code4, type: 'css'),
          const H4('Output'),
          const Img(name: 'to give size in coumn.png', height: 300),
          const H3('Source Code'),
          Code(title: 'style.css', code: code5, type: 'css'),
          const H4('Output'),
          const Img(name: 'grid auto-flow-row-and-column.png', height: 300),
        ],
      ),
    );
  }
}

var code5 = '''
.container{
    display:grid;
   
    grid-auto-flow: row; /*By Default*/
    /* To give particular size for row */
    grid-auto-rows: 100px;

    grid-auto-flow: column;
    grid-auto-columns: 100px;
  }
''';
var code4 = '''
.container{
    display:grid;
    grid-auto-flow: column;
    grid-auto-columns: 100px;
}
''';
var code3 = '''
.container{
    display:grid;
    grid-auto-flow: column;
}
''';
var code2 = '''
.container{
    display:grid;
   
    grid-auto-flow: row; /*By Default*/
    /* To give particular size for row */
    grid-auto-rows: 100px;
}
''';
var code1 = '''
.container{
    display:grid;
   
    grid-auto-flow: row; /*By Default*/
}
''';
