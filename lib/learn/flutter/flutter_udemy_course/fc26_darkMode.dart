import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_udemy_course/topicsName/flutterCourseTopics.dart';

class FCDarkMode extends StatefulWidget {
  const FCDarkMode({Key? key}) : super(key: key);

  @override
  State<FCDarkMode> createState() => _FCDarkModeState();
}

class _FCDarkModeState extends State<FCDarkMode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 26,
        topicsName: flutterCourseTopics,
        img: 'flutterConceptsI.jpg',
      ),
      body: MyPage(
        children: [
          H1('Adding Dark Mode'),
          P('we\'ll add "Dark Mode" to the app.'),
          P('The code you\'ll see in the next lecture works as shown, with one important exception (that you should adjust in your code):'),
          P('The useMaterial3: true flag is no longer needed if you\'re using the latest version of Flutter - because Material 3 is already the default with that.'),
          P('In addition, instead of adding a dark theme like this:'),
          Code(title: 'main.dart', code: code1, type: 'dart'),
          P('you should add it like this (in the next lecture, when we write that code):'),
          Code(title: 'main.dart', code: code2, type: 'dart'),
        ],
      ),
    );
  }
}

var code2 = '''
ThemeData.dark().copyWith( // dark() no longer takes any arguments
  useMaterial3: true,
  colorScheme: kColorScheme,
  cardTheme: ...
)
''';
var code1 = '''
ThemeData.dark(
  useMaterial3: true,
  colorScheme: kColorScheme,
  cardTheme: ...
)
''';
