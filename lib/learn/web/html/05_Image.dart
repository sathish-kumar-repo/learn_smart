import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/HTML/topicName/HTMLTopics.dart';

class ImageTagHTMl extends StatefulWidget {
  const ImageTagHTMl({Key? key}) : super(key: key);

  @override
  State<ImageTagHTMl> createState() => _ImageTagHTMlState();
}

class _ImageTagHTMlState extends State<ImageTagHTMl> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 5,
        topicsName: hTMLTopics,
        img: 'html.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Image Tag'),
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
    <title>Image tag</title>
</head>
<body>
    <h1>Image tag in HTML</h1>
    <img src="green.jpg">
    <img src="green.jpg" alt="green.jpg">
    <img src="green.jpg" alt="green.jpg" title="Sunshine red Reflection Flower">
    <img src="green.jpg" alt="green.jpg" height="250px" width="400px" border="1" class="imgs" id="">

    <img src="green.jpg" alt = 'no image green' height="200px" width="200px">
</body>
</html>
''';
