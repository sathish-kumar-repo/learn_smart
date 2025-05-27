import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/Flutter/Dart/topicsName/dartCoreTopics.dart';

class DartComments extends StatefulWidget {
  const DartComments({Key? key}) : super(key: key);

  @override
  State<DartComments> createState() => _DartCommentsState();
}

class _DartCommentsState extends State<DartComments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 4,
        topicsName: dartCoreTopics,
        img: 'dart.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Comments'),
          Code(title: 'main.dart', code: code1, type: 'dart'),
        ],
      ),
    );
  }
}

var code1 = '''
// single line comment

/*
Multiline line comment
Multiline line comment
Multiline line comment
Multiline line comment
 */

/// documentation comment line
/// enter press you can type
''';
