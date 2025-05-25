import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/css/TopicName/cssTopics.dart';

class PlaceselfProperty extends StatefulWidget {
  const PlaceselfProperty({Key? key}) : super(key: key);

  @override
  State<PlaceselfProperty> createState() => _PlaceselfPropertyState();
}

class _PlaceselfPropertyState extends State<PlaceselfProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 64,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Place-self'),
          const Note('It is short hand property'),
          const H3('Source Code'),
          Code(title: 'style.css', code: code, type: 'css'),
          const H4('Output'),
          const Img(name: 'grid-place-self.jpg', height: 300),
        ],
      ),
    );
  }
}

var code = '''
.box-2{
   /* In shorthand property */

    /* place-self: align-self justify-self */

    place-self: start end;
    place-self: start center;
    
    /* if two values are equal, then */
    place-self: center;
}
''';
