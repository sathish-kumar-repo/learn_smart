import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/css/TopicName/cssTopics.dart';

class FlexBasisProperty extends StatefulWidget {
  const FlexBasisProperty({Key? key}) : super(key: key);

  @override
  State<FlexBasisProperty> createState() => _FlexBasisPropertyState();
}

class _FlexBasisPropertyState extends State<FlexBasisProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 44,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Flex Basis'),
          const Note(
              'By default flex-basis is auto that is content enna size athuku etha mathri irrukumthe flex basis property specifies the initial length of a flexible item'),
          const H3('Example - 1'),
          Code(title: 'style.css', code: code1, type: 'css'),
          const H3('Output'),
          const Img(name: 'flex-basis-1.png'),
          //
          const H3('Example - 2'),
          Code(title: 'style.css', code: code2, type: 'css'),
          const H3('Output'),
          const Img(name: 'flex-basis-2.png'),
          //
          const H3('Example - 3'),
          Code(title: 'style.css', code: code3, type: 'css'),
          const H3('Output'),
          const Img(name: 'flex-basis-3.png'),
        ],
      ),
    );
  }
}

var code = '''''';
var code3 = '''
.container{
    display: flex;  
}

.flex-item{
    /* width: 100px; */
    flex-basis: auto;
 }
 
.box-1{
        flex-basis: 400px;
        flex-grow: 1;
} 
''';
var code2 = '''
.container{
    display: flex;  
}

.flex-item{
    /* width: 100px; */
    flex-basis: auto;
 }
 
.box-1{
    flex-basis: 400px;
} 
''';
var code1 = '''
/* By default flex-basis is auto that is content enna size athuku etha mathri irrukum
the flex basis property specifies the initial length of a flexible item */
.container{
    display: flex;  
}

.flex-item{
    /* width: 100px; */
    flex-basis: auto;
 }
''';
