import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/css/TopicName/cssTopics.dart';

class JustifyItemsProperty extends StatefulWidget {
  const JustifyItemsProperty({Key? key}) : super(key: key);

  @override
  State<JustifyItemsProperty> createState() => _JustifyItemsPropertyState();
}

class _JustifyItemsPropertyState extends State<JustifyItemsProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 53,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Justify-Items'),
          const Li('justify-items => Horizontal Axis Align'),
          const Li('align-items => Vertical Axis Align'),
          const H3('justify-items:start;'),
          const P('It is Default'),
          const H4('Output'),
          const Img(name: 'grid-justify-items-start.jpg', height: 300),
          //
          const H3('justify-items:end;'),
          const H4('Output'),
          const Img(name: 'grid-justify-items-end.jpg', height: 300),
          //
          const H3('justify-items:center;'),
          const H4('Output'),
          const Img(name: 'grid-justify-items-center.jpg', height: 300),
          //
          const H3('justify-items:stretch; or justify-items:baseline;'),
          const H4('Output'),
          const Img(name: 'grid-justify-items-stretch.jpg', height: 300),
          const H3('Source Code'),
          Code(title: 'style.css', code: code, type: 'css'),
        ],
      ),
    );
  }
}

var code = '''
/* justify-items => Horizontal Axis Align */
/* align-items => Vertical Axis Align */

.container{
  display:grid;
  height: 600px;
  grid-template: repeat(3,1fr) / repeat(3,1fr);

  justify-items: stretch;  /*Default*/
  justify-items: start; /*Content athaa maathri width eduthu, strating position la irukum*/
  justify-items: center;
  justify-items: end;
}
''';
