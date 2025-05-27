import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/CSS/TopicName/cssTopics.dart';

class ListStylingProperty extends StatefulWidget {
  const ListStylingProperty({Key? key}) : super(key: key);

  @override
  State<ListStylingProperty> createState() => _ListStylingPropertyState();
}

class _ListStylingPropertyState extends State<ListStylingProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 10,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('List Styling'),
          Img(name: 'lst.jpg'),
          P('In CSS, there are several properties specifically designed for styling lists. These properties allow you to control the appearance, positioning, and marker styles of ordered and unordered lists. Here are some commonly used list properties:'),
          Li('List Style Type'),
          Li('List Style Image'),
          Li('List Style Position'),
          Li('List Style Color'),
          H3('List Style Type'),
          P('Specifies the type of marker used for list items.'),
          Code(title: 'style.css', code: code1, type: 'css'),
          H3('List Style Image'),
          P('Sets an image as the marker for list items.'),
          Code(title: 'style.css', code: code2, type: 'css'),
          H3('List Style Position'),
          P('Determines the position of the list marker relative to the text.'),
          Code(title: 'style.css', code: code3, type: 'css'),
          H3('List Style Color'),
          Code(title: 'style.css', code: code5, type: 'css'),
          H3('list-style:'),
          P('A shorthand property that combines list-style-type, list-style-image, and list-style-position'),
          Code(title: 'style.css', code: code4, type: 'css'),
          P('The list-style-type property specifies the type of list item marker.'),
          P('By applying different list-style-type values to unordered and ordered lists with specific classes, you can control the appearance and style of the list markers. The code you provided demonstrates how to set various list styles using CSS.'),
          H3('Source Code'),
          Code(title: 'list.index', code: code7, type: 'html'),
          H3('More About List'),
          Code(title: 'style.css', code: code8, type: 'css'),
          Code(title: 'list.index', code: code9, type: 'html'),
        ],
      ),
    );
  }
}

var code9 = '''
<!DOCTYPE html>
<htnl large="en">
<html>
<head>
    <title>Tutor joes</title>
</head>
<style>
      #two li{
        /* list-style-type: square; */
        /* list-style: none; */
        list-style: outside;/*Default*/
        list-style: inside;
      }
    </style>
    <body>
        <h1>List properties in HTML</h1>
        <h3>List-1</h3>
        <ul>
            <li>Home</li>
            <li>Product</li>
            <li>blog</li>
            <li>download</li>
            <li>contact</li>
        </ul>
        <h3>List-2</h3>
        <ul id="two">
            <li>Home</li>
            <li>Product</li>
            <li>blog</li>
            <li>download</li>
            <li>contact</li>
        </ul>
    </body>
</html>
''';
var code8 = '''
ul li{
    /* disc
    square
    circle
    decimal
    decimal-leading-zero
    lower-roman
    upper-roman
    lower-alpha
    upper-alpha
    lower-greek
    lower-latin*/

    list-style-type: disc;
    list-style-type: square;
    list-style-type: circle;
    list-style-type: decimal;
    list-style-type: decimal-leading-zero;
    list-style-type: lower-roman;
    list-style-type: upper-alpha;
    list-style-type: lower-greek;
    list-style-type: lower-latin;

}
''';
var code7 = '''
<!DOCTYPE html>
<htnl large="en">
<html>
<head>
    <title>Sathish</title>
</head>
<style>
        ul li{
            /* disc
            square
            circle
            decimal
            decimal-leading-zero
            lower-roman
            upper-roman
            lower-alpha
            upper-alpha
            lower-greek
            lower-latin*/

            /*list-style-type: decimal;
            list-style-type: square;
            list-style-image: url(natural.webp); */
            
            list-style-type: none;
        }
        ul li::before{
            content: " ";
            display: inline-block;
            margin-right: 10px;
            height: 10px;
            width: 10px;
            background-image: url(natural.webp);
            background-size: cover;
            /* background-color: aqua; */

        }
    </style>
    <body>
        <h1>List properties</h1>
        <ul>
            <li>Home</li>
            <li>Product</li>
            <li>blog</li>
            <li>download</li>
            <li>contact</li>
        </ul>
    </body>
</html>
''';
var code6 = '''
ul.a 
{
  list-style-type: circle;
}
ul.b 
{
  list-style-type: square;
}
ol.c 
{
  list-style-type: disk;
}
ol.d 
{
  list-style-type: lower-alpha;
}
ol.e
{
list-style-type: upper-alpha;
}
''';
var code5 = '''
 ul {
    list-style-color: red;
  }
''';
var code4 = '''
ul {
  list-style: circle outside url("logo.png");
}
''';
var code3 = '''
 ul {
    list-style-position: outside;
  }
''';
var code2 = '''
ul {
  list-style-image: url("logo.png");
}
''';
var code1 = '''
ul {
  list-style-type: circle;
}
''';
