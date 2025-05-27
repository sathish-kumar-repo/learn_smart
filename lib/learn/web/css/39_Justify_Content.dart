import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/CSS/TopicName/cssTopics.dart';

class JustifyContentPropertyFlex extends StatefulWidget {
  const JustifyContentPropertyFlex({Key? key}) : super(key: key);

  @override
  State<JustifyContentPropertyFlex> createState() =>
      _JustifyContentPropertyFlexState();
}

class _JustifyContentPropertyFlexState
    extends State<JustifyContentPropertyFlex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 38,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Justify Content'),
          const H2('flex-start'),
          const H3('flex-direction : row'),
          const Img(name: 'justify-content-flex-start.jpg'),
          const H3('flex-direction : column'),
          const Img(name: 'justify-content-column-flex-start.jpg', height: 300),
          //
          const H2('flex-end'),
          const H3('flex-direction : row'),
          const Img(name: 'justify-content-flex-end.jpg'),
          const H3('flex-direction : column'),
          const Img(name: 'justify-content-column-flex-end.jpg', height: 300),
          //
          const H2('center'),
          const H3('flex-direction : row'),
          const Img(name: 'justify-content-flex-center.jpg'),
          const H3('flex-direction : column'),
          const Img(
              name: 'justify-content-column-flex-center.jpg', height: 300),
          //
          const H2('space-between'),
          const H3('flex-direction : row'),
          const Img(name: 'justify-content-space-between.jpg'),
          const H3('flex-direction : column'),
          const Img(
              name: 'justify-content-column-space-between.jpg', height: 300),
          //
          const H2('space-around'),
          const H3('flex-direction : row'),
          const Img(name: 'justify-content-space-around.jpg'),
          const H3('flex-direction : column'),
          const Img(
              name: 'justify-content-column-flex-space-around.jpg',
              height: 300),
          //
          const H2('space-evenly'),
          const H3('flex-direction : row'),
          const Img(name: 'justify-content-space-evenly.jpg'),
          const H3('flex-direction : column'),
          const Img(
              name: 'justify-content-column-flex-space-evenly.jpg',
              height: 300),
          const H2('Source Code'),
          Code(title: 'style.css', code: code, type: 'css'),
        ],
      ),
    );
  }
}

var code = '''
/* Justify-content => Main Axis Alignment
row main axis => X axis 
column main axis => Y axis */

.container{
    display: flex;
   
    flex-direction: row;
    justify-content: flex-start;
    justify-content: flex-end;
    justify-content: center;
    justify-content: space-around;
    justify-content: space-evenly;
    justify-content: space-between;

    
    height: 600px;
    flex-direction: column;
    justify-content: flex-start;
    justify-content: flex-end;
    justify-content: center;
    justify-content: space-around;
    justify-content: space-evenly;
    justify-content: space-between;
}
''';
