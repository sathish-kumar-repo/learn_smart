import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/css/TopicName/cssTopics.dart';

class FlexProperty extends StatefulWidget {
  const FlexProperty({Key? key}) : super(key: key);

  @override
  State<FlexProperty> createState() => _FlexPropertyState();
}

class _FlexPropertyState extends State<FlexProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 45,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('type'),
          const P(
              'It is short hand property for flex-grow, flex-basis and flex-shrink'),
          const Li('flex: flex-grow flex-shrink flex-basis(%,px)'),
          const Li('flex: 0 200px => flex-grow flex-basis(%,px)'),
          const Li('lex: 0 1 => flex-grow flex-shrink(0,1)'),
          const Li('flex: flex-grow'),
          Code(title: 'style.css', code: code, type: 'css'),
        ],
      ),
    );
  }
}

var code = '''
.container{
    display: flex;  
}
.box-1{
    /* * flex: flex-grow flex-shrink flex-basis(%,px) */
    /* * flex: 0 200px => flex-grow flex-basis(%,px) */
    /* * flex: 0 1 => flex-grow flex-shrink(0,1) */
    /* * flex: flex-grow */
       flex: 0 1 auto;
       flex: 0 1 200px;
       flex: 0 0 200px;
}
''';
