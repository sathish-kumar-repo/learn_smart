import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/css/TopicName/cssTopics.dart';

class BorderProperty extends StatefulWidget {
  const BorderProperty({Key? key}) : super(key: key);

  @override
  State<BorderProperty> createState() => _BorderPropertyState();
}

class _BorderPropertyState extends State<BorderProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 13,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Border Properties'),
          const H3('Img'),
          const Img(name: 'border.jpg'),
          const P(
              'In CSS, border properties are used to define the style, width, color, and radius of the borders around elements. Borders provide a visual distinction and separation between elements on a web page.'),
          const H3('border-style'),
          const P(
              'Specifies the style of the border, such as solid, dashed, dotted, double, or none.'),
          Code(title: 'style.css', code: code1, type: 'css'),
          const H4('In mix'),
          Code(title: 'style.css', code: code2, type: 'css'),
          const H3('border-width'),
          const P(
              'Sets the width of the border. It can be specified in pixels, ems, or other valid CSS length units.'),
          Code(title: 'style.css', code: code3, type: 'css'),
          const H3('border-color'),
          const P('Defines the color of the border.'),
          Code(title: 'style.css', code: code4, type: 'css'),
          const H3('So, here is how it works:'),
          const P('border-style: dotted solid double dashed; '),
          const Li('border-style: top right bottom left;'),
          const P('border-style: dotted solid double;'),
          const Li('border-style: top right_and_left bottom;'),
          const P('border-style: dotted solid;'),
          const Li('border-style: top_and_bottom right_and_left'),
          const P('border-style: dotted;'),
          const Li('border-style: all;'),
          Code(title: 'style.css', code: code5, type: 'css'),
          const H3('border-radius'),
          const P(
              'Sets the radius of the border corners, creating rounded corners for the element\'s border.'),
          Code(title: 'style.css', code: code51, type: 'css'),
          const H3('border (Shorthand Property)'),
          Code(title: 'style.css', code: code6, type: 'css'),
          const H3('border (Individual Property)'),
          Code(title: 'style.css', code: code7, type: 'css'),
          const H3('Source Code'),
          Code(title: 'style.css', code: code8, type: 'css'),
        ],
      ),
    );
  }
}

var code8 = '''
div{
    background: teal;
    width: 300px;
    height: 300px;
    /* To specify the particular side */
    border-top-width: 10px;
    border-top-color: red;
    /* border-top-style: double; */
    /* border-top-style: solid; */
    border-top-style: groove;

    border-left-width: 10px;
    border-left-color: green;
    border-left-style: dotted;

    /* in single line */
    border: 10px solid red;

}
''';
var code7 = '''
div {
    border-top: 1px dashed #0080ff;
    border-right: 2px solid #ff0000;
    border-bottom: 1px dotted #0000ff;
    border-left: 2px double #ff8000;
  }
''';
var code6 = '''
div {
    border: 2px solid #0080ff;
  }
''';
var code51 = '''
div {
  border-radius: 7px;
}
''';
var code5 = '''
/* Four values */
p {
  border-style: dotted solid double dashed;
}

/* Three values */
p {
  border-style: dotted solid double;
}

/* Two values */
p {
  border-style: dotted solid;
}

/* One value */
p {
  border-style: dotted;
}
''';
var code4 = '''
div {
  border-color: #ff1c1c;
}
p.one {
  border-style: solid;
  border-color: red green blue yellow; /* red top, green right, blue bottom and yellow left */
}
''';
var code3 = '''
div {
  border-width: 2px;
}
p.one {
    border-style: solid;
    border-width: 5px 20px; /* 5px top and bottom, 20px on the sides */
}

p.two {
  border-style: solid;
  border-width: 20px 5px; /* 20px top and bottom, 5px on the sides */
}

p.three {
  border-style: solid;
  border-width: 25px 10px 4px 35px; /* 25px top, 10px right, 4px bottom and 35px left */
}
''';
var code2 = '''
p{
    border-style: dotted dashed solid double;
}
''';
var code1 = '''
div {
  border-style: double;
}
''';
