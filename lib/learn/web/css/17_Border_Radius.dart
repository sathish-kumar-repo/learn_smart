import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/CSS/TopicName/cssTopics.dart';

class BorderRadiusProperty extends StatefulWidget {
  const BorderRadiusProperty({Key? key}) : super(key: key);

  @override
  State<BorderRadiusProperty> createState() => _BorderRadiusPropertyState();
}

class _BorderRadiusPropertyState extends State<BorderRadiusProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 17,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Border Radius'),
          const P('border-radius: 15px 50px 30px 5px'),
          const Li(
              'border-radius: top-left top-right bottom-right bottom-left'),
          const P('border-radius: 15px 50px 30px;'),
          const Li(
              'border-radius: top-left top-right_and_bottom_left bottom_right'),
          const P('border-radius: 15px 50px;'),
          const Li(
              'border-radius: top-left_and_bottom-right top-right_and_bottom_left'),
          const P('border-radius: 15px;'),
          const Li('border-radius: all'),
          Code(title: 'style.css', code: code, type: 'css'),
        ],
      ),
    );
  }
}

var code = '''
.box{
    height: 150px;
    width: 150px;
    background: -webkit-linear-gradient(#e67e22,#e74c3c);
    border-radius: 150px;  /*Circle*/
    /* border-radius:  */
    border-radius: 0px 20px 0px 10px;

    border-radius: 10px 20px  50px;
    border-radius: 10px 20px ;

}
''';
