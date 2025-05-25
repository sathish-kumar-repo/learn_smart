import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_udemy_course/topicsName/flutterCourseTopics.dart';

class FCKey extends StatefulWidget {
  const FCKey({Key? key}) : super(key: key);

  @override
  State<FCKey> createState() => _FCKeyState();
}

class _FCKeyState extends State<FCKey> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 25,
        topicsName: flutterCourseTopics,
        img: 'flutterConceptsI.jpg',
      ),
      body: MyPage(
        children: [
          H1('Key'),
        ],
      ),
    );
  }
}
