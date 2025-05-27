import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/CSS/TopicName/cssTopics.dart';

class FlexGrowProperty extends StatefulWidget {
  const FlexGrowProperty({Key? key}) : super(key: key);

  @override
  State<FlexGrowProperty> createState() => _FlexGrowPropertyState();
}

class _FlexGrowPropertyState extends State<FlexGrowProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 42,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Flex Grow'),
          const H3('Example - 1'),
          Code(title: 'style.css', code: code1, type: 'css'),
          const H4('Output'),
          const Img(name: 'flex-grow-1img.png'),
          //
          const H3('Example - 2'),
          Code(title: 'style.css', code: code2, type: 'css'),
          const H4('Output'),
          const Img(name: 'flex-grow-img3.png'),
          //
          const H3('Example - 3'),
          Code(title: 'style.css', code: code3, type: 'css'),
          const H4('Output'),
          const Img(name: 'flex-grow-2img.png'),
          //
          const H3('Example - 4'),
          Code(title: 'style.css', code: code4, type: 'css'),
          const H4('Output'),
          const Img(name: 'flex-grow-img4.png'),
          const H3('Source Code'),
          Code(title: 'style.css', code: code5, type: 'css'),
        ],
      ),
    );
  }
}

var code5 = '''
.container{
    display: flex;  
}
.box-3{
    /* flex-grow: 0; Default */
    flex-grow: 1;
}
/*To split in 1:1 ratio*/
/*to slpit only 2 in 1:2 ratio*/
.box-4{
    flex-grow: 1;
    /* flex-grow: 3; */
}

/* To apply all box, then choose comman class and put flex-grow property */
.flex-item{
    flex-grow: 1;
}
''';
var code4 = '''
.container{
    display: flex;  
}
/* To apply all box, then choose comman class and put flex-grow property */
.flex-item{
    flex-grow: 1;
}
''';
var code3 = '''
.container{
    display: flex;  
}
.box-3{
    /* flex-grow: 0; Default */
    flex-grow: 1;
}
/*To split in 1:1 ratio*/
/*to slpit only 2 in 1:2 ratio*/

.box-4{
  flex-grow: 1;
}
''';
var code2 = '''
.container{
    display: flex;  
}
.box-3{
    /* flex-grow: 0; Default */
    flex-grow: 1;
}
/*To split in 1:1 ratio*/
/*to slpit only 2 in 1:2 ratio*/

.box-4{
    flex-grow: 3;
}
''';
var code1 = '''
.container{
    display: flex;  
}
.box-3{
    /* flex-grow: 0; Default */
    flex-grow: 1;
}
''';
