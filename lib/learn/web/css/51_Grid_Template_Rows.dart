import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/css/TopicName/cssTopics.dart';

class GridTemplateRowsProperty extends StatefulWidget {
  const GridTemplateRowsProperty({Key? key}) : super(key: key);

  @override
  State<GridTemplateRowsProperty> createState() =>
      _GridTemplateRowsPropertyState();
}

class _GridTemplateRowsPropertyState extends State<GridTemplateRowsProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 50,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Grid Template Rows'),
          const H3('Method 1'),
          const P(
              'if you want to create a grid with three rows, where the all rows is 100 pixels tall, you can use the following code: '),
          Code(title: 'style.css', code: code1, type: 'css'),
          const H4('Output'),
          const Img(name: 'grid-template-rows.jpg', height: 300),
          //
          const H3('Method 2'),
          const P(
              'if you want to create a grid with three rows, where the first row is 100 pixels tall, the second row is 150 pixels of the remaining space, and the third row is 200 pixels tall, you can use the following code: '),
          Code(title: 'style.css', code: code2, type: 'css'),
          const H4('Output'),
          const Img(name: 'grid-template-rows-px.jpg', height: 300),
          //
          const H3('Method 3'),
          const P('repeat function'),
          Code(title: 'style.css', code: code3, type: 'css'),
          const H4('Output'),
          const Img(name: 'grid-template-rows-repeat-px.jpg', height: 300),
          //
          const H3('Method 4'),
          const P(
              'If you want to create a 3-rows grid with rows of equal Height. Instead of writing out "1fr 1fr 1fr",you can use the "repeat" function like this '),
          Code(title: 'style.css', code: code4, type: 'css'),
          const H4('Output'),
          const Img(name: 'grid-template-rows-repeat-px (1).jpg', height: 300),
          const H4('Source Code'),
          Code(title: 'style.css', code: code5, type: 'css'),
        ],
      ),
    );
  }
}

var code5 = '''
.container{
    display:grid;
    /* Should have height property then do  */
    height: 600px;
    grid-template-columns: repeat(3,1fr); /*By default strech work*/

    grid-template-rows: 100px;
    grid-template-rows: 100px 150px 300px;
    grid-template-rows: repeat(3,100px);
    grid-template-rows: repeat(3,1fr);
}
''';
var code4 = '''
.container{
    display: grid;
    height: 600px;
    grid-template-columns: repeat(3,1fr);
    grid-template-rows: repeat(3,1fr);
}
''';
var code3 = '''
.container{
    display: grid;
    height: 600px;
    grid-template-columns: repeat(3,1fr);
    grid-template-rows: repeat(3,100px);
}
''';
var code2 = '''
.container{
    display: grid;
    height: 600px;
    grid-template-columns: repeat(3,1fr);
    grid-template-rows: 100px 150px 200px;
}
''';
var code1 = '''
.container{
    display: grid;
    height: 600px;
    grid-template-columns: repeat(3,1fr);
    grid-template-rows: 100px;
}
''';
