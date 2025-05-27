import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/CSS/TopicName/cssTopics.dart';

class FlexShrinkProperty extends StatefulWidget {
  const FlexShrinkProperty({Key? key}) : super(key: key);

  @override
  State<FlexShrinkProperty> createState() => _FlexShrinkPropertyState();
}

class _FlexShrinkPropertyState extends State<FlexShrinkProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 43,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Flex Shrink'),
          const Note('Default all container has shrink value is 1'),
          const H3('Example - 1'),
          Code(title: 'style.css', code: code1, type: 'css'),
          const H4('Output'),
          const Img(name: 'flex-shrink-1.png'),
          //
          const H3('Example - 2'),
          Code(title: 'style.css', code: code2, type: 'css'),
          const H4('Output'),
          const Img(name: 'flex-shrink-2.png'),
          //
          const H3('Example - 3'),
          Code(title: 'style.css', code: code3, type: 'css'),
          const H4('Output'),
          const Img(name: 'flex-shrink-2 (2).png'),
        ],
      ),
    );
  }
}

var code3 = '''
/* grow -> large
shrink -> small */

/* Default all container has shrink value is 1 */

/* Default shrink property is 1` */
.container{
    display: flex;  
}

.flex-item{
   flex-shrink: 1; /*Default*/
   flex-shrink: 0;
   width: 100px;

}

.box-4{
    flex-shrink: 3;
}
''';
var code2 = '''
.container{
    display: flex;  
}

.flex-item{
   flex-shrink: 1; /*Default*/
   flex-shrink: 0;
}    
''';
var code1 = '''
    /* grow -> large
shrink -> small */

/* Default all container has shrink value is 1 */

/* Default shrink property is 1` */
.container{
    display: flex;  
}

.flex-item{
   flex-shrink: 1; /*Default*/
}
''';
