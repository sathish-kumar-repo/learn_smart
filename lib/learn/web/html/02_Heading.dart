import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/HTML/topicName/HTMLTopics.dart';

class HeadingTagHTMl extends StatefulWidget {
  const HeadingTagHTMl({Key? key}) : super(key: key);

  @override
  State<HeadingTagHTMl> createState() => _HeadingTagHTMlState();
}

class _HeadingTagHTMlState extends State<HeadingTagHTMl> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 2,
        topicsName: hTMLTopics,
        img: 'html.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Heading Tag'),
          const H3('Source Code'),
          Code(title: 'index.html', code: code, type: 'html')
        ],
      ),
    );
  }
}

var code = '''
<html>
<head>
    <title>Heading</title>
</head>
<body>
    
    <h1>Heading Tag - 1</h1>
    <h2>Heading Tag - 2</h2>
    <h3>Heading Tag - 3</h3>
    <h4>Heading Tag - 4</h4>
    <h5>Heading Tag - 5</h5>
    <h6>Heading Tag - 6</h6>
</body>
</html>
''';
