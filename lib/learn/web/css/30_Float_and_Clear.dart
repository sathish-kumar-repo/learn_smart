import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/css/TopicName/cssTopics.dart';

class Float_and_ClearProperty extends StatefulWidget {
  const Float_and_ClearProperty({Key? key}) : super(key: key);

  @override
  State<Float_and_ClearProperty> createState() =>
      _Float_and_ClearPropertyState();
}

class _Float_and_ClearPropertyState extends State<Float_and_ClearProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 30,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Float and Clear'),
          const H3('Float'),
          const P(
              'The CSS float property specifies how an element should float.'),
          const P(
              'The float property is used for positioning and formatting content '),
          const Li('left - The element floats to the left of its container'),
          const Li('right - The element floats to the right of its container'),
          const Li(
              'none - The element does not float (will be displayed just where it occurs in the text). This is default'),
          const Li(
              'inherit - The element inherits the float value of its parent'),
          Code(title: 'float.css', code: code1, type: 'css'),
          const H3('Clear'),
          const P(
              'The CSS clear property specifies what elements can float beside the cleared element and on which side.'),
          const P(
              'When we use the float property, and we want the next element below (not on right or left), we will have to use the clear property.'),
          const P(
              'The clear property specifies what should happen with the element that is next to a floating element.'),
          const P('The clear property can have one of the following values:'),
          const Li(
              'none - The element is not pushed below left or right floated elements. This is default'),
          const Li('left - The element is pushed below left floated elements'),
          const Li(
              'right - The element is pushed below right floated elements'),
          const Li(
              'both - The element is pushed below both left and right floated elements'),
          const Li(
              'inherit - The element inherits the clear value from its parent'),
          const P(
              'When clearing floats, you should match the clear to the float: If an element is floated to the left, then you should clear to the left. Your floated element will continue to float, but the cleared element will appear below it on the web page.'),
          const H3('The clearfix Hack'),
          const P(
              'If a floated element is taller than the containing element, it will "overflow" outside of its container. We can then add a clearfix hack to solve this problem:'),
          Code(title: 'clearfix.css', code: code3, type: 'css'),
          Code(title: 'clearfix.html', code: code4, type: 'html'),
          const P(
              'The overflow: auto works well as long as you are able to keep control of your margins and padding (else you might see scrollbars). The new, modern clearfix hack however, is safer to use, and the following code is used for most webpages:'),
          Code(title: 'modernClearfix.css', code: code5, type: 'css'),
          Code(title: 'modernClearfix.html', code: code6, type: 'html'),
        ],
      ),
    );
  }
}

var code6 = '''
<div class="clearfix">
    <img class="img2" src="pineapple.jpg" alt="Pineapple" width="170" height="170">
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus imperdiet...
</div>
''';
var code5 = '''
.clearfix::after {
    content: "";
    clear: both;
    display: table;
}
''';
var code4 = '''

<div class="clearfix">
    <img class="img2" src="pineapple.jpg" alt="Pineapple" width="170" height="170">
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus imperdiet...
</div>
''';
var code3 = '''
.clearfix {
    overflow: auto;
}
''';
var code2 = '''
.div1 {
    float: left;
    padding: 10px;
    border: 3px solid #73AD21;
}

.div2 {
  padding: 10px;
  border: 3px solid red;
}

.div3 {
  float: left;
  padding: 10px;  
  border: 3px solid #73AD21;
}

.div4 {
  padding: 10px;
  border: 3px solid red;
  clear: left;
}   
''';
var code1 = '''
img {
    float: left;
}
''';
