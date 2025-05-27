import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/CSS/TopicName/cssTopics.dart';

class FlexflowProperty extends StatefulWidget {
  const FlexflowProperty({Key? key}) : super(key: key);

  @override
  State<FlexflowProperty> createState() => _FlexflowPropertyState();
}

class _FlexflowPropertyState extends State<FlexflowProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 36,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Flex flow'),
          const P(
              'Suppose we use shorthand in flex-direction and flex-wrap , then only use flex-flow'),
          Code(title: 'style.css', code: code, type: 'css'),
        ],
      ),
    );
  }
}

var code = '''
  .container{
      display: flex;
      /* Flex-direction, flex-wrap */
      flex-flow: row nowrap;
      flex-flow: row wrap;
      flex-flow: row wrap-reverse;
      height: 400px;
      flex-flow: column nowrap;
      flex-flow: column wrap;
      flex-flow: column wrap-reverse;
  }
''';
