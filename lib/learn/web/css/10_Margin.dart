import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/css/TopicName/cssTopics.dart';

class MarginProperty extends StatefulWidget {
  const MarginProperty({Key? key}) : super(key: key);

  @override
  State<MarginProperty> createState() => _MarginPropertyState();
}

class _MarginPropertyState extends State<MarginProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 11,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Margin Properties'),
          P('In CSS, margin properties are used to control the spacing and positioning of elements by defining the space around an element\'s content. Margins create space between the element and its neighbouring elements or the container.'),
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
    /* Margin */
    /*  1.Margin - Individual Sides
            margin-top: value;
            margin-right: value;
            margin-bottom: value;
            margin-left: value;
        2.Margin - Shorthand property
            margin: value (all side);
            margin : top right bottom left;
            margin: vertical (Top, Bottom) horizontal (Left, Right); 
            margin: top,horizontal,bottom;*/
    margin: 75px;
    /* specify each side */
    margin-top: 40px;
    margin-bottom: 30px;
    margin-left: 10px;
    margin-right: 70px;
    /* specify side in single line
    margin : top,right,bottom,left */
    margin: 70px 70px 70px 70px;
    margin: 10px 70px 30px 70px;
    /* speccify horizontal and vertical */
    margin: 50px 70px;  
    /* margin: top,horizontal,bottom; */
    margin: 30px 50px 10px;
    
}
''';
