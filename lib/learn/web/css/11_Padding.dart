import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/css/TopicName/cssTopics.dart';

class PaddingProperty extends StatefulWidget {
  const PaddingProperty({Key? key}) : super(key: key);

  @override
  State<PaddingProperty> createState() => _PaddingPropertyState();
}

class _PaddingPropertyState extends State<PaddingProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 12,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Padding Properties'),
          P('In CSS, padding properties are used to control the spacing and size of the content area within an element. Padding creates space between the element\'s content and its borders.'),
          H3('Source Code'),
          Code(title: 'style.css', code: code, type: 'css'),
        ],
      ),
    );
  }
}

var code = '''
div{
    background: brown;
    color: white;
    height: 150px;
    width: 300px;
   /* margin denoted as outer space
    padding denoted as inner space ; */
    margin: 30px 50px 10px;
    /* Padding */
    padding: 10px;
    padding-left: 10px;
    padding-right: 20px;
    padding-bottom: 30px;
    padding-top: 40px;
    padding: 40px 20px;
    padding: 40px 20px 30px;
    /*  1.Padding - Individual Sides
            Padding-top: value;
            Padding-right: value;
            Padding-bottom: value;
            Padding-left: value;
        2.Padding - Shorthand property
            Padding: value (all side);
            Padding : top right bottom left;
            Padding: vertical (Top, Bottom) horizontal (Left, Right); 
            Padding: top,horizontal,bottom;*/
    
}
''';
