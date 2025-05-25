import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/css/TopicName/cssTopics.dart';

class FlexWrapProperty extends StatefulWidget {
  const FlexWrapProperty({Key? key}) : super(key: key);

  @override
  State<FlexWrapProperty> createState() => _FlexWrapPropertyState();
}

class _FlexWrapPropertyState extends State<FlexWrapProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 35,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Flex Wrap'),
          const H2('In row'),
          const H3('flex-wrap: nowrap;'),
          const Li('It is DEFAULT'),
          Code(title: 'style.css', code: code1, type: 'css'),
          const H4('Output'),
          const Img(name: 'flex-nowrap.jpg'),
          //
          const H3('flex-wrap: wrap-reverse;'),
          Code(title: 'style.css', code: code2, type: 'css'),
          const H4('Output'),
          const Img(name: 'flex-wrap-reverse.jpg'),
          //
          const H2('In column'),
          const H3('flex-wrap: nowrap;'),
          Code(title: 'style.css', code: code3, type: 'css'),
          const H4('Output'),
          const Img(name: 'flex-nowrap-column.jpg'),
          //
          const H3('flex-wrap: wrap;'),
          Code(title: 'style.css', code: code4, type: 'css'),
          const H4('Output'),
          const Img(name: 'flex-wrap-column.jpg'),
          //
          const H3('flex-wrap: wrap-reverse;'),
          Code(title: 'style.css', code: code5, type: 'css'),
          const H4('Output'),
          const Img(name: 'flex-wrap-reverse-column.jpg'),
        ],
      ),
    );
  }
}

var code5 = '''
.container{
    display: flex;
    height: 400px;
    flex-direction: column;
    flex-wrap: wrap-reverse;        
}
''';
var code4 = '''
.container{
    display: flex;
    height: 400px;
    flex-direction: column;
    flex-wrap: wrap;       
}
''';
var code3 = '''
.container{
    display: flex;
    height: 400px;
    flex-direction: column;
    flex-wrap: nowrap;        
}
''';
var code2 = '''
.container{
    display: flex;
    flex-direction: row;
    flex-wrap: wrap-reverse;
}
''';
var code1 = '''
.container{
    display: flex;
    flex-direction: row;
    flex-wrap: nowrap;       
}
''';
