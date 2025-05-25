import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/css/TopicName/cssTopics.dart';

class AlignItemsProperty extends StatefulWidget {
  const AlignItemsProperty({Key? key}) : super(key: key);

  @override
  State<AlignItemsProperty> createState() => _AlignItemsPropertyState();
}

class _AlignItemsPropertyState extends State<AlignItemsProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 54,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Align-Items'),
          const H3('align-items:stretch; or align-items:baseline;'),
          const H4('Output'),
          const Img(name: 'grid-align-items-stretch.jpg', height: 300),
          //
          const H3('align-items:start;'),
          const H4('Output'),
          const Img(name: 'grid-align-items-start.jpg', height: 300),
          //
          const H3('align-items:end;'),
          const H4('Output'),
          const Img(name: 'grid-align-items-end.jpg', height: 300),
          //
          const H3('align-items:center;'),
          const H4('Output'),
          const Img(name: 'grid-align-items-center.jpg', height: 300),
          //
          const H3('used justify-tems and align-items'),
          Code(title: 'style.css', code: code, type: 'css'),
          const H4('Output'),
          const Img(name: 'grid-align-items.jpg', height: 300),
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

    justify-items: center;
    
    align-items: stretch; /*Default*/
    align-items: start;
    align-items: center;
    /* align-items: end; */
}
''';
