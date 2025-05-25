import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/css/TopicName/cssTopics.dart';

class JustifyselfProperty extends StatefulWidget {
  const JustifyselfProperty({Key? key}) : super(key: key);

  @override
  State<JustifyselfProperty> createState() => _JustifyselfPropertyState();
}

class _JustifyselfPropertyState extends State<JustifyselfProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 62,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Justify-self'),
          const H2('Source Code'),
          Code(title: 'style.css', code: code, type: 'css'),
          const H4('Output'),
          const H3('justify-self: stretch;'),
          const Img(name: 'grid-justify-self-stretch.jpg', height: 300),
          //
          const H3('justify-self: start;'),
          const Img(name: 'grid-justify-self-start.jpg', height: 300),
          //
          const H3('justify-self: end;'),
          const Img(name: 'grid-justify-self-end.jpg', height: 300),
          //
          const H3('justify-self: center;'),
          const Img(name: 'grid-justify-self-center.jpg', height: 300),
        ],
      ),
    );
  }
}

var code = '''
.box-2{
    /* To Move X-axis that is Horizontal */
    justify-self: stretch; /*Default*/
    justify-self: start; /* Content width eduthu starting position la irrukum(Horizontal)*/
    justify-self: end;
    justify-self: center;
}
''';
