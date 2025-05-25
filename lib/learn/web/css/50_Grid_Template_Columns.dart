import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/css/TopicName/cssTopics.dart';

class GridTemplateColumnsProperty extends StatefulWidget {
  const GridTemplateColumnsProperty({Key? key}) : super(key: key);

  @override
  State<GridTemplateColumnsProperty> createState() =>
      _GridTemplateColumnsPropertyState();
}

class _GridTemplateColumnsPropertyState
    extends State<GridTemplateColumnsProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 49,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Grid Template Columns'),
          H3('Method 1'),
          P('you can define columns of different sizes by setting the property to a combination of fixed and flexible values, such as "100px 200px 300px"'),
          Code(title: 'style.css', code: code1, type: 'css'),
          H4('Output'),
          Img(name: 'grid-template-column-px.jpg', height: 300),
          //
          H3('Method 2'),
          P('you can define three columns of equal width by setting the Grid Template Columns property to "2fr 2fr 1fr"'),
          Code(title: 'style.css', code: code2, type: 'css'),
          H4('Output'),
          Img(name: 'grid-template-column-fr.jpg', height: 300),
          //
          H3('Method 3'),
          P('repeat function'),
          Code(title: 'style.css', code: code3, type: 'css'),
          H4('Output'),
          Img(name: 'grid-template-column-repeat-px.jpg', height: 300),
          //
          H3('Method 4'),
          P('to create a grid with 4 columns, where the first 3 columns are 200 pixels wide and the last column are 300px width, you can use this code'),
          Code(title: 'style.css', code: code4, type: 'css'),
          H4('Output'),
          Img(name: 'grid-template-column-repeat.jpg', height: 300),
          //
          H3('Method 4'),
          P('repeat and minmax function'),
          Note('Minimum 200px irukum maximum 1fr irukum'),
          Code(title: 'style.css', code: code5, type: 'css'),
          H4('Output'),
          Img(name: 'grid-template-column-repeat-min-max.jpg', height: 300),
          H3('Source Code'),
          Code(title: 'style.css', code: code6, type: 'css'),
        ],
      ),
    );
  }
}

var code6 = '''
.container{
    display:grid;
    grid-template-columns: 100px 200px 300px;
    grid-template-columns: 200px 200px 200px 200px;

    /* Other method is easy using repeat function */
    grid-template-columns: repeat(3,200px);
    /* First parameter => how many times repeat
    second parameter => What size */

    /* We need other column */
    grid-template-columns: repeat(3,200px) 300px;

    /* we use px sometimes happen overflow, so solution we use fr value (that is fraction) */
    grid-template-columns: 1fr 2fr 1fr;
    grid-template-columns: 2fr 2fr 1fr;

    /* Other function is minmax */
    grid-template-columns: repeat(3,minmax(200px,1fr));
}
''';
var code5 = '''
.container{
    display: grid;
    grid-template-columns: repeat(3, minmax(200px, 1fr));
}
''';
var code4 = '''
.container{
    display: grid;
    grid-template-columns:repeat(3,200px) 300px;
}
''';
var code3 = '''
.container{
    display: grid;
    grid-template-columns:repeat(3,200px);
}
''';
var code2 = '''
.container{
    display: grid;
    grid-template-columns: 2fr 2fr 1fr;
}
''';
var code1 = '''
.container{
    display: grid;
    grid-template-columns: 100px 200px 300px;
}
''';
