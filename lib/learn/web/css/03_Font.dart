import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/css/TopicName/cssTopics.dart';

class FontProperty extends StatefulWidget {
  const FontProperty({Key? key}) : super(key: key);

  @override
  State<FontProperty> createState() => _FontPropertyState();
}

class _FontPropertyState extends State<FontProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 4,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Font Properties'),
          const H2('Properties'),
          const Img(name: 'font.jpg'),
          const H3('Font Family'),
          Code(title: 'style.css', code: code1, type: 'css'),
          const H3('Font Style'),
          Code(title: 'style.css', code: code2, type: 'css'),
          const H3('Font variant'),
          Code(title: 'style.css', code: code3, type: 'css'),
          const H3('Font Strech'),
          const P(
              'Controls the width or condensedness of the font. It can be set to values like "normal", "condensed", "expanded", or specific keywords like "ultra-condensed" or "ultra-expanded".'),
          Code(title: 'style.css', code: code4, type: 'css'),
          const H3('Font Synthesis'),
          const P(
              ' Determines how missing font styles or weights are synthesized by the browser. It can be set to values like "weight", "style", "none", or "all" to control the synthesis behavior.'),
          Code(title: 'style.css', code: code5, type: 'css'),
          const H3('Font Display'),
          const P(
              ' Specifies how the web font is displayed while it is being loaded. It helps control the text\'s fallback behavior until the custom font is fully loaded. Values include "auto", "swap", "block", "fallback", and more.'),
          Code(title: 'style.css', code: code6, type: 'css'),
          const H3('In Short Hand'),
          Code(title: 'style.css', code: code7, type: 'css'),
          Code(title: 'style.css', code: code8, type: 'css'),
          const P(
              'This is a paragraph. The font size is set to 20 pixels, and the font family is Arial.'),
          Code(title: 'style.css', code: code9, type: 'css'),
          const P(
              'This is a paragraph. The font is set to italic and bold, the font size is set to 12 pixels, the line height is set to 30 pixels, and the font family is Georgia.'),
        ],
      ),
    );
  }
}

var code9 = '''
p.b {
    font: italic small-caps bold 12px/30px Georgia, serif;
    /*font: font-style font-variant font-weight font-size/line-height font-family, fallback*/
}
''';
var code8 = '''
p.a {
    font: 20px Arial, sans-serif;
}
''';
var code7 = '''
p{
    font: bold 12px Arial;
}
''';
var code6 = '''
@font-face {
  font-family: 'Wix Madefor Text';
  src: url('Wix-Madefor-Text.ttf2') format('ttf2'),
       url('Wix-Madefor-Text.ttf') format('ttf');
  font-display: swap;
}

h1 {
  font-family: 'Wix Madefor Text', sans-serif;
}
''';
var code5 = '''
h2{
  font-synthesis: weight;
}

span {
  font-synthesis: style;
}

p {
  font-synthesis: style weight;
}
''';
var code4 = '''
h1 {
  font-stretch: condensed;
}

p {
  font-stretch: expanded;
}

span {
  font-stretch: 7;
}
''';
var code3 = '''
p.normal {
  font-variant: normal;
}

p.small {
  font-variant: small-caps;
}
''';
var code2 = '''
p.normal {
  font-style: normal;
}

p.italic {
  font-style: italic;
}

p.oblique {
  font-style: oblique;
}
''';
var code1 = '''
.serif {
  font-family: "Times New Roman", Times, serif;
}

.sansserif {
  font-family: Arial, Helvetica, sans-serif;
}

.monospace {
  font-family: "Lucida Console", Courier, monospace;
}
''';
