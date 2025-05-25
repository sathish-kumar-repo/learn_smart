import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_udemy_course/topicsName/flutterCourseTopics.dart';

class FCEnum extends StatefulWidget {
  const FCEnum({Key? key}) : super(key: key);

  @override
  State<FCEnum> createState() => _FCEnumState();
}

class _FCEnumState extends State<FCEnum> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 23,
        topicsName: flutterCourseTopics,
        img: 'flutterConceptsI.jpg',
      ),
      body: MyPage(
        children: [
          const H1('Enum'),
          Code(title: 'main.dart', code: code, type: 'dart'),
          const Note(
              'Please note that these values ae not wrapped in quotes. So we don\'t have String values here techincally, but nontheless, this entire syntax here is reognized by Dart and treats these values kind of like string values.'),
        ],
      ),
    );
  }
}

var code = '''
enum Category { food, travel, leisure, work }
''';
