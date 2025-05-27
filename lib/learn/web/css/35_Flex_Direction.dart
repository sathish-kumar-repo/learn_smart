import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/CSS/TopicName/cssTopics.dart';

class FlexDirectionProperty extends StatefulWidget {
  const FlexDirectionProperty({Key? key}) : super(key: key);

  @override
  State<FlexDirectionProperty> createState() => _FlexDirectionPropertyState();
}

class _FlexDirectionPropertyState extends State<FlexDirectionProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 34,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Flex Direction'),
          const H3('flex-direction: row;'),
          Code(title: 'style.css', code: code1, type: 'css'),
          const H4('Output'),
          const Img(name: 'flex-direction-row.jpg'),
          //
          const H3('flex-direction: row-reverse;'),
          Code(title: 'style.css', code: code2, type: 'css'),
          const H4('Output'),
          const Img(name: 'flex-direction-row-reverse.jpg'),
          //
          const H3('flex-direction: column;'),
          Code(title: 'style.css', code: code3, type: 'css'),
          const H4('Output'),
          const Img(name: 'flex-direction-column.jpg'),
          //
          const H3('flex-direction: column-reverse;'),
          Code(title: 'style.css', code: code4, type: 'css'),
          const H4('Output'),
          const Img(name: 'flex-direction-column-reverse.jpg'),
        ],
      ),
    );
  }
}

var code4 = '''
.container{
    display: flex;
    flex-direction: column-reverse;
}
''';
var code3 = '''
.container{
    display: flex;
    flex-direction: column;
}
''';
var code2 = '''
.container{
    display: flex;
    flex-direction: row-reverse;
}
''';
var code1 = '''
.container{
    display: flex;
    flex-direction: row; /*Default*/
}
''';
