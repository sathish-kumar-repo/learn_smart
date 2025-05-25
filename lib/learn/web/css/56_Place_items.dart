import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/css/TopicName/cssTopics.dart';

class PlaceitemsProperty extends StatefulWidget {
  const PlaceitemsProperty({Key? key}) : super(key: key);

  @override
  State<PlaceitemsProperty> createState() => _PlaceitemsPropertyState();
}

class _PlaceitemsPropertyState extends State<PlaceitemsProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 55,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Place-items'),
          Code(title: 'style.css', code: code1, type: 'css'),
          const H2('Output'),
          const H3('place-items:center start;'),
          const Img(name: 'grid-place-items.jpg', height: 300),
          const H3('place-items:center;'),
          const Img(name: 'grid-place-items-single.jpg', height: 300),
        ],
      ),
    );
  }
}

var code1 = '''
.container{
    display:grid;
    height: 600px;
    grid-template: repeat(3,1fr) / repeat(3,1fr);

    /* place-items: align-iems(Vertical) justify-items(Horizontal); */
    place-items: center start;

    /* if align-iems value = justify-items value, then */
    place-items: center;
}
''';
