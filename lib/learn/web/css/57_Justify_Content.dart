import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/CSS/TopicName/cssTopics.dart';

class JustifyContentProperty extends StatefulWidget {
  const JustifyContentProperty({Key? key}) : super(key: key);

  @override
  State<JustifyContentProperty> createState() => _JustifyContentPropertyState();
}

class _JustifyContentPropertyState extends State<JustifyContentProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 56,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('type'),
          const H3('justify-content: start'),
          const H4('Output'),
          const Img(name: 'grid-justify-content-start.jpg', height: 300),
          //
          const H3('justify-content: center'),
          const H4('Output'),
          const Img(name: 'grid-justify-content-center.jpg', height: 300),
          //
          const H3('justify-content: end'),
          const H4('Output'),
          const Img(name: 'grid-justify-content-end.jpg', height: 300),
          //
          const H3('justify-content: space-between'),
          const H4('Output'),
          const Img(
              name: 'grid-justify-content-space-between.jpg', height: 300),
          //
          const H3('justify-content: space-around'),
          const H4('Output'),
          const Img(name: 'grid-justify-content-space-around.jpg', height: 300),
          //
          const H3('justify-content: space-evenly'),
          const H4('Output'),
          const Img(name: 'grid-justify-content-space-evenly.jpg', height: 300),
          const H4('Source Code'),
          Code(title: 'style.css', code: code, type: 'css'),
        ],
      ),
    );
  }
}

var code = '''
/* Simple meaning
    items => styling all items
    content =. styling set of items = content 

    justify => Horizontal Aignment
*/

.container{
    display:grid;
    height: 800px;
    grid-template: repeat(3,200px) / repeat(3,200px);

    justify-content: start;  /*Default*/
    justify-content: center;
    justify-content: end;
    justify-content: space-between;
    justify-content: space-around;
    justify-content: space-evenly;
}
''';
