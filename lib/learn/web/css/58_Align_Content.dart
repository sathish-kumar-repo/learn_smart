import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/css/TopicName/cssTopics.dart';

class AlignContentProperty extends StatefulWidget {
  const AlignContentProperty({Key? key}) : super(key: key);

  @override
  State<AlignContentProperty> createState() => _AlignContentPropertyState();
}

class _AlignContentPropertyState extends State<AlignContentProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 57,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Align-Content'),
          const H3('align-content: start'),
          const H4('Output'),
          const Img(name: 'grid-align-content-start.jpg', height: 300),
          //
          const H3('align-content: center'),
          const H4('Output'),
          const Img(name: 'grid-align-content-center.jpg', height: 300),
          //
          const H3('align-content: end'),
          const H4('Output'),
          const Img(name: 'grid-align-content-end.jpg', height: 300),
          //
          const H3('align-content: space-between'),
          const H4('Output'),
          const Img(name: 'grid-align-content-space-between.jpg', height: 300),
          //
          const H3('align-content: space-around'),
          const H4('Output'),
          const Img(name: 'grid-align-content-space-around.jpg', height: 300),
          //
          const H3('align-content: space-evenly'),
          const H4('Output'),
          const Img(name: 'grid-align-content-space-evenly.jpg', height: 300),
          const H4('Source Code'),
          Code(title: 'style.css', code: code, type: 'css'),
        ],
      ),
    );
  }
}

var code = '''
.container{
   display:grid;
   height: 800px;
   grid-template: repeat(3,200px) / repeat(3,200px);

   align-content: start; /*Default*/
   align-content: center;
   align-content: end;
   align-content: space-between;
   align-content: space-around;
   align-content: space-evenly;
}
''';
