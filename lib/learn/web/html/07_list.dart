import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/HTML/topicName/HTMLTopics.dart';

class ListTagHTMl extends StatefulWidget {
  const ListTagHTMl({Key? key}) : super(key: key);

  @override
  State<ListTagHTMl> createState() => _ListTagHTMlState();
}

class _ListTagHTMlState extends State<ListTagHTMl> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 7,
        topicsName: hTMLTopics,
        img: 'html.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('List Tag'),
          const H3('Unorder List'),
          const Li(
              '<ul>...</ul> - Represents a list of items with bullet points. '),
          const H3('Source Code'),
          Code(title: 'index.html', code: code1, type: 'html'),
          const H3('Ordered List'),
          const Li('<ol>...</ol> - Represents a list of items with numbers. '),
          const H3('Source Code'),
          Code(title: 'index.html', code: code2, type: 'html'),
          const H3('Definition List'),
          const Li(
              '<dl>...</dl> - Represents a list of terms and their associated descriptions'),
          const H3('Source Code'),
          Code(title: 'index.html', code: code3, type: 'html'),
          const H3('Menu List'),
          const Li('<menu>...</menu> - Represents a list of commands'),
          const H3('Source Code'),
          Code(title: 'index.html', code: code4, type: 'html'),
          const H3('Directory List'),
          const Li(
              '<dir>...</dir> - Represents a list of file names with bullet points'),
          const H3('Source Code'),
          Code(title: 'index.html', code: code5, type: 'html'),
        ],
      ),
    );
  }
}

var code5 = '''
<html>
<head>
    <title>HTML - Tutor Joes</title>
</head>
<body>
    <dir>
        <li> Computer</li>
        <li> Computer</li>
        <li> Computer</li>
        <li> Computer</li>
        <li> Computer</li>
    </dir>
</body>
</html>
''';
var code4 = '''
<html>
<head>
    <title>HTML - Tutor Joes</title>
</head>
<body>
    <menu>
        <li> Computer</li>
        <li> Computer</li>
        <li> Computer</li>
        <li> Computer</li>
        <li> Computer</li>
    </menu>
    
    <menu>
        <menuitem> Computer</menuitem>
        <menuitem> Computer</menuitem>
        <menuitem> Computer</menuitem>
        <menuitem> Computer</menuitem>
        <menuitem> Computer</menuitem>
    </menu>
</body>
</html>
''';
var code3 = '''
<html>
<head>
    <title>HTML - Tutor Joes</title>
</head>
<body>
    <dl>
        <dt>HTML</dt>
        <dd> 
            Hyper text Markup Language
            <dl>
                <dt>CSS</dt>
                <dd> Cascading Stylesheet</dd>
            </dl>
        </dd>
        <dt>CSS</dt>
        <dd> 
            Cascading Stylesheet
                <ul type="square">
                    <li>HTML</li>
                    <li>CSS</li>
                    <li>JS</li>
                    <li>JQUERY</li>
                    <li>PHP</li>
                </ul>
        </dd>
    </dl>
</body>
</html>
''';
var code2 = '''
<html>
<head>
    <title>HTML - Tutor Joes</title>
</head>
<body>
    <ul>
        <li> Computer</li>
        <li> Computer</li>
        <li> Computer</li>
        <li> Computer</li>
        <li> Computer</li>
    </ul>        
    <ul type="circle">
        <li> Computer</li>
        <li> Computer</li>
        <li> Computer</li>
        <li> Computer</li>
        <li> Computer</li>
    </ul>
    <ul type="square">
        <li> Computer</li>
        <li> Computer</li>
        <li> Computer</li>
        <li> Computer</li>
        <li> Computer</li>
    </ul>
    <ul type="circle">
        <li> Computer</li>
        <li>
            Computer
                <ul type="square">
                    <li>Keyboard</li>
                    <li>Keyboard</li>
                    <li>Keyboard</li>
                    <li>Keyboard</li>
                    <li>Keyboard</li>
                </ul>
        </li>
        <li> Computer</li>
        <li> Computer</li>
        <li> Computer</li>
    </ul>

</body>
</html>
''';
var code1 = '''
<html>
<head>
    <title>HTML - Tutor Joes</title>
</head>
<body>
    <ol>
        <li> Computer</li>
        <li> Computer</li>
        <li> Computer</li>
        <li> Computer</li>
        <li> Computer</li>
    </ol>
    <ol type="a">
        <li> Computer</li>
        <li> Computer</li>
        <li> Computer</li>
        <li> Computer</li>
        <li> Computer</li>
    </ol>        
    <ol type="A">
        <li> Computer</li>
        <li> Computer</li>
        <li> Computer</li>
        <li> Computer</li>
        <li> Computer</li>
    </ol>
    <ol type="i">
        <li> Computer</li>
        <li> Computer</li>
        <li> Computer</li>
        <li> Computer</li>
        <li> Computer</li>
    </ol>        
    <ol type="I">
        <li> Computer</li>
        <li> Computer</li>
        <li> Computer</li>
        <li> Computer</li>
        <li> Computer</li>
    </ol>
</body>
</html>
''';
