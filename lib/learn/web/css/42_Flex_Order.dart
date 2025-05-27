import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/CSS/TopicName/cssTopics.dart';

class FlexOrderProperty extends StatefulWidget {
  const FlexOrderProperty({Key? key}) : super(key: key);

  @override
  State<FlexOrderProperty> createState() => _FlexOrderPropertyState();
}

class _FlexOrderPropertyState extends State<FlexOrderProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 41,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Flex Order'),
          H3('Source Code'),
          Code(title: 'style.css', code: code, type: 'css'),
          H4('Output'),
          Img(name: 'order.png')
        ],
      ),
    );
  }
}

var code = '''
.container{
    display: flex;  
}

.box-1{order: 0;  /*Default*/}

.box-1{order: 4; }
.box-2{order: 1; }
.box-3{order: 2; }
.box-4{order: 5; }
.box-5{order: 3; }

/* Suppose you give same order for two element, then check html element order */
''';
