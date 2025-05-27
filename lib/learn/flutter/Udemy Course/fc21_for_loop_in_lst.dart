import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/Flutter/Udemy Course/topicsName/flutterCourseTopics.dart';

class FCForLoopInList extends StatefulWidget {
  const FCForLoopInList({Key? key}) : super(key: key);

  @override
  State<FCForLoopInList> createState() => _FCForLoopInListState();
}

class _FCForLoopInListState extends State<FCForLoopInList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 21,
        topicsName: flutterCourseTopics,
        img: 'flutterConceptsI.jpg',
      ),
      body: MyPage(
        children: [
          const H1('Using "for" Loops in Lists'),
          const Img(name: 'un_map.png'),
          const P(
              'Just as you can also use the if keyword inside of lists (to add elements conditionally), you can also use the for keyword to add multiple items into a list:'),
          Code(title: 'main.dart', code: code1, type: 'dart'),
          const P(
              'In this example, the numbers 5 and 6 will be added to myList (hence myList thereafter is [1, 2, 5, 6]).'),
          const P(
              'This for ... in syntax is a special variation of the for loop that loops through multiple items in a list. You will see it again later in the course - both outside and inside of a list. It will also be explained again later.'),
          const P(
              'The idea behind this loop is to simplify the process of performing some operation on all items in a list.'),
          const P(
              'When used in a list, it\'s essentially an alternative to the spread operator (...):'),
          Code(title: 'main.dart', code: code2, type: 'dart'),
          const P(
              'It can be useful in scenarios where values must be transformed before being added to a list - the for ... in loop can then be used instead of map() + spread operator:'),
          Code(title: 'main.dart', code: code3, type: 'dart'),
          const P('can be replaced with:'),
          Code(title: 'main.dart', code: code4, type: 'dart'),
          const P(
              'As mentioned, you will learn more about for later in the course.'),
          const Link(
              'https://github.com/dart-lang/language/blob/main/accepted/2.3/control-flow-collections/feature-specification.md#repetition'),
        ],
      ),
    );
  }
}

var code4 = '''
final numbers = [5, 6];
final myList = [
  1,
  2,
  for (final num in numbers)
    num * 2 // adds 10 and 12
];
''';
var code3 = '''
final numbers = [5, 6];
final myList = [
  1,
  2,
  ...numbers.map((n) {
    return n * 2; 
  }) // adds 10 and 12
];
''';
var code2 = '''
final numbers = [5, 6];
final myList = [
  1,
  2,
  ...numbers
];
''';
var code1 = '''
final numbers = [5, 6];
final myList = [
  1,
  2,
  for (final num in numbers)
    num
];
''';
