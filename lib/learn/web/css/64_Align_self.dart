import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/CSS/TopicName/cssTopics.dart';

class AlignselfProperty extends StatefulWidget {
  const AlignselfProperty({Key? key}) : super(key: key);

  @override
  State<AlignselfProperty> createState() => _AlignselfPropertyState();
}

class _AlignselfPropertyState extends State<AlignselfProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 63,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Align-self'),
          const H2('Source Code'),
          Code(title: 'style.css', code: code, type: 'css'),
          const H4('Output'),
          const H3('align-self: stretch;'),
          const Img(name: 'grid-align-self-stretch.jpg', height: 300),
          //
          const H3('align-self: start;'),
          const Img(name: 'grid-align-self-start.jpg', height: 300),
          //
          const H3('align-self: end;'),
          const Img(name: 'grid-align-self-end.jpg', height: 300),
          //
          const H3('align-self: center;'),
          const Img(name: 'grid-align-self-center.jpg', height: 300),
        ],
      ),
    );
  }
}

var code = '''
.container{
  display: grid;
  grid-template: repeat(3,200px)/ repeat(3,200px);
}
  

.box-1{
  grid-column: 1 / span 2;
  grid-row: 1 / span 2;
}

.box-2{
  align-self: stretch;
  align-self: start;
  align-self: end;
  align-self: center;
}
''';
