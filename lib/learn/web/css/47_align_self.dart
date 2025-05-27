import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/CSS/TopicName/cssTopics.dart';

class AlignSelfProperty extends StatefulWidget {
  const AlignSelfProperty({Key? key}) : super(key: key);

  @override
  State<AlignSelfProperty> createState() => _AlignSelfPropertyState();
}

class _AlignSelfPropertyState extends State<AlignSelfProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 46,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Align Self'),
          const Li('Align self is control each item'),
          const Li('Align items is control all items'),
          const Note('align-self: auto; Based upon parent => align-item value'),
          Code(title: 'style.css', code: code, type: 'css'),
          const H3('In Row'),
          const H4('Output'),
          const Img(name: 'align-self-1.png', height: 300),
          const H3('In Column'),
          const H4('Output'),
          const Img(name: 'align-self-2.png', height: 300),
        ],
      ),
    );
  }
}

var code = '''
.container{
    display: flex; 
    flex-direction: row;
    /* flex-direction: column; */
    height: 600px;
    align-items: stretch; /*Default*/
}

.box-1{
   align-self: auto;  /*Based upon parent => align-item value*/
} 

.box-2{
    align-self: flex-start;
}
.box-3{
    align-self: flex-end;
}
.box-4{
    align-self: center;
}
.box-5{
    align-self: stretch;
}
''';
