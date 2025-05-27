import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/CSS/TopicName/cssTopics.dart';

class GridColumnProperty extends StatefulWidget {
  const GridColumnProperty({Key? key}) : super(key: key);

  @override
  State<GridColumnProperty> createState() => _GridColumnPropertyState();
}

class _GridColumnPropertyState extends State<GridColumnProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 60,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('type'),
          const P('This Method is Used to merge two or more columns'),
          const H3('Method-1'),
          const P('Using Grid Lines to mention'),
          Code(title: 'style.css', code: code1, type: 'css'),
          const H4('Output'),
          const Img(name: 'grid-columns-using-grid-lines.png', height: 300),
          //
          const H3('Method-2'),
          const P('Using column(that is span) like using in table'),
          Code(title: 'style.css', code: code2, type: 'css'),
          const H4('Output'),
          const Img(name: 'grid-column-using-span.png', height: 300),
          //
          const H3('Method-3'),
          const P('In Short Hand Property'),
          Code(title: 'style.css', code: code3, type: 'css'),
          const H3('Source Code'),
          Code(title: 'style.css', code: code4, type: 'css'),
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

    /* This number based on grid lines */
    grid-column-start: 1;
    /* grid-column-end: 3; */
    grid-column-end: 4;

    /* This number based on column*/
    grid-column-start: 1;
    grid-column-end: span 3;
  }
''';
var code3 = '''
    .box-1{
        /* In shorthand property*/
        /* In grid lines */
        grid-column: 1 / 4; 
        /* In columns  */
        grid-column: 1 / span 2;
    }
''';
var code2 = '''
.box-1{  
    /* This number based on column*/
    grid-column-start: 1;
    grid-column-end: span 3;
}
''';
var code1 = '''
.box-1{

    /* This number based on grid lines */
    grid-column-start: 1;
    grid-column-end: 3;
  }
''';
