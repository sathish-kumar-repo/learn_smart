import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/flutter_udemy_course/topicsName/flutterCourseTopics.dart';

class FCFunctionsPositionAndNamedArguments extends StatefulWidget {
  const FCFunctionsPositionAndNamedArguments({Key? key}) : super(key: key);

  @override
  State<FCFunctionsPositionAndNamedArguments> createState() =>
      _FCFunctionsPositionAndNamedArgumentsState();
}

class _FCFunctionsPositionAndNamedArgumentsState
    extends State<FCFunctionsPositionAndNamedArguments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 6,
        topicsName: flutterCourseTopics,
        img: 'flutterConceptsI.jpg',
      ),
      body: MyPage(
        children: [
          const H1('Position & Named Arguments'),
          const P(
              'In general, function parameters / arguments (the term is used interchangeably here) are a key concept.'),
          const P(
              'You use arguments to pass values into a function. The function may then use these parameter values to work with them - e.g., to display them on the screen, use them in a calculation or send them to another function.'),
          const P(
              'In Dart (and therefore Flutter, since it uses Dart), you have two kinds of parameters you can accept in functions:'),
          const H3('Positional:'),
          const Li(
              'The position of an argument determines which parameter receives the value'),
          Code(title: 'main.dart', code: code1, type: 'dart'),
          const H3('Named:'),
          const Li(
              'The name of an argument determines which parameter receives the value'),
          Code(title: 'main.dart', code: code2, type: 'dart'),
          const Note(
              'Besides the different usage, there\'s one very important difference between positional and named arguments: By default, positional parameters are required and must not be omitted - on the other hand, named arguments are optional and can be omitted.'),
          const P(
              'In the example above, when using named parameters, you could call add(); like this:'),
          Code(title: 'main.dart', code: code3, type: 'dart'),
          const P(
              'When using positional parameters, calling add(b: 5); like this otherwise would be invalid and hence cause an error!'),
          Code(title: 'main.dart', code: code4, type: 'dart'),
          const P(
              'You can change these behaviors, though. You can make positional arguments optional and named arguments required.'),
          const P(
              'Positional arguments can be made optional by wrapping them with square brackets ([]):'),
          Code(title: 'main.dart', code: code5, type: 'dart'),
          const P(
              'Once a parameter is optional, you can also assign a default value to it - this value would be used if no value is provided for the argument:'),
          Code(title: 'main.dart', code: code6, type: 'dart'),
          const P(
              'Default values can also be assigned to named parameters - which are optional by default:'),
          Code(title: 'main.dart', code: code7, type: 'dart'),
          const P(
              'You can also make named parameters required by using the built-in required keyword:'),
          Code(title: 'main.dart', code: code8, type: 'dart'),
          const P(
              'You will, of course, see these different use-cases in action throughout the course.'),
        ],
      ),
    );
  }
}

var code8 = '''
void add({required a, required b}) { // a & b are no longer optional
  print(a + b); 
}  
''';
var code7 = '''
void add({a, b = 5}) { // b has a default value of 5
  print(a + b); 
}  
 
add(b: 10); // for b, 10 would be used instead of 5; a has no default value and would be "null" here => a special value type you'll learn about throughout this course
''';
var code6 = '''
void add(a, [b = 5]) { // b is optional, 5 will be used as a default value
  print(a + b);
}
add(10); // b would still be 5 because it's not overwritten
add(10, 6); // here, b would be 6
''';
var code5 = '''
void add(a, [b]) { // b is optional
  print(a + b);
}
''';
var code4 = '''
add(b: 5);
''';
var code3 = '''
add();
''';
var code2 = '''
void add({a, b}) { // a & b are named parameters (because of the curly braces)
  print(a + b); 
}  
 
add(b: 5, a: 10); // 5 is used as a value for b, because it's assigned to that name; 10 is used as a value for a
''';
var code1 = '''
void add(a, b) { // a & b are positional parameters
  print(a + b); // print() is a built-in function that will be explained later
}
 
add(5, 10); // 5 is used as a value for a, because it's the first argument; 10 is used as a value for b

''';
