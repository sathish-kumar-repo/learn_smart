import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/html/topicName/HTMLTopics.dart';

class FontTagHTMl extends StatefulWidget {
  const FontTagHTMl({Key? key}) : super(key: key);

  @override
  State<FontTagHTMl> createState() => _FontTagHTMlState();
}

class _FontTagHTMlState extends State<FontTagHTMl> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 4,
        topicsName: hTMLTopics,
        img: 'html.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Font Tag'),
          const H3('Source Code'),
          Code(title: 'index.html', code: code, type: 'html'),
        ],
      ),
    );
  }
}

var code = """
<html>
<head>
    <title>FontTag</title>
</head>
<body>
    <h1>Font Tag</h1>
    <font face="algerian" size = '5' color = "red">
    Any thing write as display in given font
    </font>
</body>
</html>
""";
