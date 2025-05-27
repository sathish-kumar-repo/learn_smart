import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/Flutter/Udemy Course/topicsName/flutterCourseTopics.dart';

class FCIfInList extends StatefulWidget {
  const FCIfInList({Key? key}) : super(key: key);

  @override
  State<FCIfInList> createState() => _FCIfInListState();
}

class _FCIfInListState extends State<FCIfInList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 16,
        topicsName: flutterCourseTopics,
        img: 'flutterConceptsI.jpg',
      ),
      body: MyPage(
        children: [
          const H1('Using "if" Statements in Lists'),
          const P(
              'The if statement is a crucial feature of the Dart language - actually, it\'s a core feature of pretty much all programming languages.'),
          const P(
              'In addition to what you learned in the previous lecture, in Dart, you may also use if inside of lists to conditionally add items to lists:'),
          Code(title: 'main.dart', code: code1, type: 'dart'),
          const P(
              'In this example, the number 3 will only be added to myList if condition was met (condition can be true or false or a check that yields true or false - e.g., day == \'Sunday\').'),
          const P(
              'Please note that there are NO curly braces around the if statement body. The if statement body also only comprises the next line of code (i.e., you can\'t have multiple lines of code inside the if statement).'),
          const P(
              'You can also specify an else case - an alternative value that may be inserted into the list if condition is not met:'),
          Code(title: 'main.dart', code: code2, type: 'dart'),
          const P(
              'Using this feature is optional. Alternatively, you could, for example, also work with a ternary expression:'),
          Code(title: 'main.dart', code: code3, type: 'dart'),
          const P(
              'Especially when inserting more complex values (e.g., a widget with multiple parameters being set) into a more complex list (e.g., a list of widgets passed to a Column() or Row()), this feature can lead to more readable code.'),
        ],
      ),
    );
  }
}

var code = '''''';
var code3 = '''
final myList = [
  1,
  2,
  condition ? 3 : 4
];
''';
var code2 = '''
final myList = [
  1,
  2,
  if (condition)
    3
  else
    4
];''';
var code1 = '''
final myList = [
  1,
  2,
  if (condition)
    3
];
''';
