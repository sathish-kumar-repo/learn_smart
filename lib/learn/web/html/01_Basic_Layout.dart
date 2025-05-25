import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/html/topicName/HTMLTopics.dart';

class BasicLayoutHTMl extends StatefulWidget {
  const BasicLayoutHTMl({Key? key}) : super(key: key);

  @override
  State<BasicLayoutHTMl> createState() => _BasicLayoutHTMlState();
}

class _BasicLayoutHTMlState extends State<BasicLayoutHTMl> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 1,
        topicsName: hTMLTopics,
        img: 'html.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Basic Layout'),
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
    <title>My first page</title>
</head>
<body>
    Hello World! this is my first program
</body>
</html>
''';
