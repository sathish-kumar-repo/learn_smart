import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/dart_core/topicsName/dartCoreTopics.dart';

class DartStringInterpolation extends StatefulWidget {
  const DartStringInterpolation({Key? key}) : super(key: key);

  @override
  State<DartStringInterpolation> createState() =>
      _DartStringInterpolationState();
}

class _DartStringInterpolationState extends State<DartStringInterpolation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 6,
        topicsName: dartCoreTopics,
        img: 'dart.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('String Interpolation'),
          Code(title: 'main.dart', code: code1, type: 'dart'),
          const H3('String functions'),
          Code(title: 'main.dart', code: code2, type: 'dart'),
        ],
      ),
    );
  }
}

var code2 = '''
void main() {
  String name1 = 'Tutor';
  print(name1);

  String name2 = 'Joes';
  print(name2);

  print("Hi \$name1 \$name2");

  String name = "Tutor Joes ";
  print(name.substring(0, 5));

  int index = name.indexOf(' '); //to find character
  print(index);

  print(name.substring(index).trim()); //5,..
  print(name.toUpperCase());
  print(name.toLowerCase());
  print(name.length);
  print(name.contains('Tutor'));
  print(name.contains('xyz'));

  name = "Tutor Joes Computer Education";
  List<String> words = name.split(' ');
  print(words);
  print(words[0]);
}
''';
var code1 = '''
void main() {
  // Literals
  var isCool = true;
  int x = 2;
  "John";
  4.5;

  // Various ways to define String Literals in Dart
  String s1 = 'Single';
  String s2 = "Double";
  String s3 = 'It\'s easy';
  String s4 = "It's easy";

  String s5 = 'This is going to be a very long String. '
      'This is just a sample String demo in Dart Programming Language'; // no need to use + symbol
  print(s1);
  print(s2);
  print(s3);
  print(s4);
  print(s5);

  // String Interpolation : Use ["My name is \$name"] instead of ["My name is " + name]
  String name = "Kevin";

  print("My name is \$name");
  print("The number of characters in String Kevin is \${name.length}");

  int l = 20;
  int b = 10;

  print("The sum of \$l and \$b is \${l + b}");
  print("The area of rectangle with length \$l and breadth \$b is \${l * b}");
}
''';
