import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/css/TopicName/cssTopics.dart';

class PlaceontentProperty extends StatefulWidget {
  const PlaceontentProperty({Key? key}) : super(key: key);

  @override
  State<PlaceontentProperty> createState() => _PlaceontentPropertyState();
}

class _PlaceontentPropertyState extends State<PlaceontentProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 58,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Place-Content'),
          const Note(
              'Place-content is shorthand for justify-content and align-content'),
          Code(title: 'style.css', code: code, type: 'css'),
          const H2('Output'),
          const H3('place-content: end center;'),
          const Img(name: 'grid-place-content.jpg', height: 300),
          const H3('place-content: center;'),
          const Img(name: 'grid-place-content-single.jpg', height: 300),
        ],
      ),
    );
  }
}

var code = '''
/*  Simple meaning
    iems => styling all items
    content =. styling set of items = content 

    justify => Horizontal Aignment
    align => Vertical Alignment
*/

.container{
    display:grid;
    height: 800px;
    grid-template: repeat(3,200px) / repeat(3,200px);

    /* place-content: align-content justify-content; */
    place-content: start end;
    place-content: start center;
    place-content: end center;

    /* if align-content value = justify-content value */
    place-content: center;
}
''';
