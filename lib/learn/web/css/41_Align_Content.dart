import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/CSS/TopicName/cssTopics.dart';

class AlignContentPropertyFlex extends StatefulWidget {
  const AlignContentPropertyFlex({Key? key}) : super(key: key);

  @override
  State<AlignContentPropertyFlex> createState() =>
      _AlignContentPropertyFlexState();
}

class _AlignContentPropertyFlexState extends State<AlignContentPropertyFlex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 40,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Align Content'),
          const Note('Its work when give warp'),
          const H3('flex-start'),
          Code(title: 'style.css', code: code1, type: 'css'),
          const H4('Output'),
          const Img(name: 'Flex-start-align-content.png', height: 300),
          //
          const H3('flex-end'),
          Code(title: 'style.css', code: code2, type: 'css'),
          const H4('Output'),
          const Img(name: 'FLEX-END-ALIGN-CONTENT.png', height: 300),
          //
          const H3('center'),
          Code(title: 'style.css', code: code3, type: 'css'),
          const H4('Output'),
          const Img(name: 'flex-center-align-content.png', height: 300),
          //
          const H3('space-between'),
          Code(title: 'style.css', code: code4, type: 'css'),
          const H4('Output'),
          const Img(name: 'space-between-align-content.png', height: 300),
          //
          const H3('space-around'),
          Code(title: 'style.css', code: code5, type: 'css'),
          const H4('Output'),
          const Img(name: 'space-around-align-content.png', height: 300),
          //
          const H3('stretch'),
          Code(title: 'style.css', code: code6, type: 'css'),
          const H4('Output'),
          const Img(name: 'strecg-align-content.png', height: 300),
          //
          const H3('Source Code'),
          Code(title: 'style.css', code: code7, type: 'css'),
        ],
      ),
    );
  }
}

var code7 = '''
.container{
    display: flex;
    height: 600px;
    /* Its work when give warp */
    flex-wrap: wrap;  

    align-content: stretch;  /*Default*/
    align-content:flex-start;
    align-content:center;
    align-content:flex-end;
    align-content:flex-end;
    align-content:space-between;
    align-content:space-around;
}    
''';
var code6 = '''
.container {
    display: flex;
    flex-wrap: wrap;
    align-content: stretch;
}
''';
var code5 = '''
.container {
    display: flex;
    flex-wrap: wrap;
    align-content: space-around;
}
''';
var code4 = '''
.container {
    display: flex;
    flex-wrap: wrap;
    align-content: space-between;
}
''';
var code3 = '''
.container {
    display: flex;
    flex-wrap: wrap;
    align-content: center;
}
''';
var code2 = '''
.container {
    display: flex;
    flex-wrap: wrap;
    align-content: flex-end;
}
''';
var code1 = '''
.container {
    display: flex;
    flex-wrap: wrap;
    align-content: flex-start;
}      
''';
