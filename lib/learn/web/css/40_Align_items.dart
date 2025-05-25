import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/css/TopicName/cssTopics.dart';

class AlignitemsPropertyFlex extends StatefulWidget {
  const AlignitemsPropertyFlex({Key? key}) : super(key: key);

  @override
  State<AlignitemsPropertyFlex> createState() => _AlignitemsPropertyFlexState();
}

class _AlignitemsPropertyFlexState extends State<AlignitemsPropertyFlex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 39,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Align items'),
          const H2('stretch'),
          const H3('flex-direction : row'),
          const Img(name: 'flex-align-items-stretch.jpg'),
          const H3('flex-direction : column'),
          const Img(name: 'flex-align-items-column-stretch.jpg', height: 300),
          //
          const H2('flex-start'),
          const H3('flex-direction : row'),
          const Img(name: 'flex-align-items-flex-start.jpg'),
          const H3('flex-direction : column'),
          const Img(
              name: 'flex-align-items-column-flex-start.jpg', height: 300),
          //
          const H2('flex-end'),
          const H3('flex-direction : row'),
          const Img(name: 'flex-align-items-flex-end.jpg'),
          const H3('flex-direction : column'),
          const Img(name: 'flex-align-items-column-flex-end.jpg', height: 300),
          //
          const H2('center'),
          const H3('flex-direction : row'),
          const Img(name: 'flex-align-items-center.jpg'),
          const H3('flex-direction : column'),
          const Img(name: 'flex-align-items-column-center.jpg', height: 300),
          //
          const H2('baseline'),
          const H3('flex-direction : row'),
          const Img(name: 'flex-align-items-baseline.jpg'),
          const H3('flex-direction : column'),
          const Img(name: 'flex-align-items-column-baseline.jpg', height: 300),
          Code(title: 'style.css', code: code, type: 'css'),
        ],
      ),
    );
  }
}

var code = '''
/* Align-Item => Cross Axis Alignment
row cross axis => Y axis 
column cross axis => X axis */

.container{
    display: flex;
    flex-direction: row;
    height: 600px;

    align-items: stretch; /*Default*/
    align-items: flex-start;
    align-items: flex-end;
    align-items: center;
    align-items: baseline;


    flex-direction: column;
    height: 600px;

    align-items: stretch; /*Default*/
    align-items: flex-start;
    align-items: flex-end;
    align-items: center;
    align-items: baseline;
}
    
/* Baseline Arrangement */

.box-1{
    font-size: 45px;
}
''';
