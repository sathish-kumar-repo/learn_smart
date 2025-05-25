import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/css/TopicName/cssTopics.dart';

class CursorProperty extends StatefulWidget {
  const CursorProperty({Key? key}) : super(key: key);

  @override
  State<CursorProperty> createState() => _CursorPropertyState();
}

class _CursorPropertyState extends State<CursorProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 5,
        topicsName: cssTopics,
        img: 'css.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Cursor'),
          Code(title: 'index.html', code: code1, type: 'html')
        ],
      ),
    );
  }
}

var code1 = '''
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <span style="cursor: auto">auto</span>
    <span style="cursor: crosshair">crosshair</span>
    <span style="cursor: default">default</span>
    <span style="cursor: e-resize">e-resize</span>
    <span style="cursor: help">help</span><br>
    <span style="cursor: move">move</span>
    <span style="cursor: n-resize">n-resize</span>
    <span style="cursor: ne-resize">ne-resize</span><
    <span style="cursor: nw-resize">nw-resize</span>
    <span style="cursor: pointer">pointer</span>
    <span style="cursor: progress">progress</span>
    <span style="cursor: s-resize">s-resize</span>
    <span style="cursor: se-resize">se-resize</span>
    <span style="cursor: sw-resize">sw-resize</span>
    <span style="cursor: text">text</span>
    <span style="cursor: w-resize">w-resize</span>
    <span style="cursor: wait">wait</span>
</body>
</html>
''';
