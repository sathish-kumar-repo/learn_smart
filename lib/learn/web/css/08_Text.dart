import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/CSS/TopicName/cssTopics.dart';

class TextProperty extends StatefulWidget {
  const TextProperty({Key? key}) : super(key: key);

  @override
  State<TextProperty> createState() => _TextPropertyState();
}

class _TextPropertyState extends State<TextProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 7,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Text Properties'),
          Img(name: 'txt.jpg'),
          Note(
              'High contrast is very important for people with vision problems. So, always ensure that the contrast between the text color and the background color (or background image) is good!'),
          P('The CSS background properties are used to define the background effects for elements. '),
          P('In these chapters, you will learn about the following CSS background properties:'),
          Li('Text Color'),
          Li('Text Alignment'),
          Li('Text Direction'),
          Li('Text Decoration'),
          Li('Text Transformation'),
          Li('Text Spacing'),
          Li('Text Shadow'),
          H3('Text Color'),
          P('The color property is used to set the color of the text. '),
          Code(title: 'style.css', code: code1, type: 'css'),
          H3('Text Alignment'),
          P('The text-align property is used to set the horizontal alignment of a text.'),
          Code(title: 'style.css', code: code2, type: 'css'),
          H3('Text Align Last'),
          P('The text-align-last property specifies how to align the last line of a text.'),
          Code(title: 'style.css', code: code3, type: 'css'),
          H3('Text Direction'),
          P('The direction and unicode-bidi properties can be used to change the text direction of an element:'),
          Code(title: 'style.css', code: code4, type: 'css'),
          H3('Vertical Allignment'),
          Code(title: 'style.css', code: code5, type: 'css'),
          H3('Text Decoration'),
          P('The text-decoration property is used to set or remove decorations from text.'),
          P('The value text-decoration: none; is often used to remove underlines from links'),
          H3('Text Decoration Color'),
          Note(
              'It is not recommended to underline text that is not a link, as this often confuses the reader.'),
          Code(title: 'style.css', code: code7, type: 'css'),
          H3('Text Decoration Style '),
          Code(title: 'style.css', code: code8, type: 'css'),
          H3('Thickness for the Decoration Line'),
          Code(title: 'style.css', code: code9, type: 'css'),
          H4('In short hand'),
          Code(title: 'style.css', code: code10, type: 'css'),
          H3('Text Transformation'),
          P('The text-transform property is used to specify uppercase and lowercase letters in a text.'),
          P('It can be used to turn everything into uppercase or lowercase letters, or capitalize the first letter of each word'),
          Code(title: 'style.css', code: code11, type: 'css'),
          H3('Text Spacing'),
          P('The text-indent property is used to specify the indentation of the first line of a text'),
          Code(title: 'style.css', code: code12, type: 'css'),
          H3('Letter Spacing'),
          Code(title: 'style.css', code: code13, type: 'css'),
          H3('Line Height'),
          Code(title: 'style.css', code: code14, type: 'css'),
          H3('Word Spacing'),
          Code(title: 'style.css', code: code15, type: 'css'),
          H3('White Space'),
          Code(title: 'style.css', code: code16, type: 'css'),
          H3('Text Shadow'),
          P('The text-shadow property adds shadow to text.'),
          P('In its simplest use, you only specify the horizontal shadow (2px) and the vertical shadow (2px):'),
          H4('Most Usage'),
          Code(title: 'style.css', code: code17, type: 'css'),
          Code(title: 'style.css', code: code18, type: 'css'),
          Code(title: 'style.css', code: code19, type: 'css'),
          Code(title: 'style.css', code: code20, type: 'css'),
          Code(title: 'style.css', code: code21, type: 'css'),
          Code(title: 'style.css', code: code22, type: 'css'),
          Code(title: 'style.css', code: code23, type: 'css'),
          H3('Quotes'),
          Code(title: 'example.html', code: code24, type: 'html'),
        ],
      ),
    );
  }
}

var code24 = '''
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<style>
  q.custom{
      quotes: "~" "~";
      display: block;
  }
</style>
<body>
    <q>satish kumar</q>
    <q class="custom">satish kumar</q>
</body>
</html>
''';
var code23 = '''
h1 {
    color: white;
    text-shadow: 1px 1px 2px black, 0 0 25px blue, 0 0 5px darkblue;
}
''';
var code22 = '''
h1 {
    text-shadow: 0 0 3px #ff0000, 0 0 5px #0000ff;
}
''';
var code21 = '''
h1 {
    text-shadow: 0 0 3px #ff0000;
}
''';
var code20 = '''
h1 {
    color: white;
    text-shadow: 2px 2px 4px #000000;
}
''';
var code19 = '''
h1 {
    text-shadow: 2px 2px 5px red;
}
''';
var code18 = '''
h1 {
    text-shadow: 2px 2px red;
}
''';
var code17 = '''
h1 {
    text-shadow: 2px 2px;
}
''';
var code16 = '''
p {
    white-space: nowrap;
}
''';
var code15 = '''
p.one {
    word-spacing: 10px;
}

p.two {
  word-spacing: -2px;
}
''';
var code14 = '''
p.small {
    line-height: 0.8;
}

p.big {
  line-height: 1.8;
}
''';
var code13 = '''
h1 {
  letter-spacing: 5px;
}

h2 {
  letter-spacing: -2px;
}
''';
var code12 = '''
p {
  text-indent: 50px;
}
''';
var code11 = '''
h1 {
  text-transform:: uppercase;;
  text-transform:: lowercase;;
  text-transform:: capitalize;;
}
''';
var code10 = '''
h1 {
    text-decoration: underline;
}

h2 {
  text-decoration: underline red;
}

h3 {
  text-decoration: underline red double;
}

p {
  text-decoration: underline red double 5px;
}
''';
var code9 = '''
h1 {
    text-decoration-line: underline;
    text-decoration-thickness: auto;  /* this is default */
}
  
h2 {
  text-decoration-line: underline;
  text-decoration-thickness: 5px;
}

h3 {
  text-decoration-line: underline;
  text-decoration-thickness: 25%;
}

p {
  text-decoration-line: underline;
  text-decoration-color: red;  
  text-decoration-style: double;
  text-decoration-thickness: 5px;  
}
''';
var code8 = '''
h1 {
    text-decoration-line: underline;
    text-decoration-style: solid; /* this is default */
}

h2 {
  text-decoration-line: underline;
  text-decoration-style: double;
}

h3 {
  text-decoration-line: underline;
  text-decoration-style: dotted;  
}

p.ex1 {
  text-decoration-line: underline;
  text-decoration-style: dashed;  
}

p.ex2 {
  text-decoration-line: underline;
  text-decoration-style: wavy;  
}
  
p.ex3 {
  text-decoration-line: underline;
  text-decoration-color: red;  
  text-decoration-style: wavy;  
}
''';
var code7 = '''
h1 {
  text-decoration-line: overline;
  text-decoration-color: red;
}

h2 {
  text-decoration-line: line-through;
  text-decoration-color: blue;
}

h3 {
  text-decoration-line: underline;
  text-decoration-color: green;  
}

p {
  text-decoration-line: overline underline;
  text-decoration-color: purple;  
}
''';
var code6 = '''
h1 {
    text-decoration: overline;
}

h2 {
    text-decoration: line-through;
}

h3 {
    text-decoration: underline;
}

p.ex {
    text-decoration: overline underline;
}
''';
var code5 = '''
img.a {
    vertical-align: baseline;
}

img.b {
  vertical-align: text-top;
}

img.c {
  vertical-align: text-bottom;
}

img.d {
  vertical-align: sub;
}

img.e {
  vertical-align: super;
}
''';
var code4 = '''
p.ex1 {
    direction: rtl;
    /* unicode-bidi: bidi-override; */
    unicode-bidi: isolate-override;
  }
''';
var code3 = '''
p.a {
    text-align-last: right;
}

p.b {
    text-align-last: center;
}

p.c {
    text-align-last: justify;
}
''';
var code2 = '''
h1 {
  text-align: center;
}

h2 {
  text-align: left;
}

h3 {
  text-align: right;
}
''';
var code1 = '''
body {
  color: blue;
}

h1 {
  color: green;
}
''';
