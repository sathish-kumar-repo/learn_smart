import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/dart_core/topicsName/dartCoreTopics.dart';

class DartDartConstants extends StatefulWidget {
  const DartDartConstants({Key? key}) : super(key: key);

  @override
  State<DartDartConstants> createState() => _DartDartConstantsState();
}

class _DartDartConstantsState extends State<DartDartConstants> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 7,
        topicsName: dartCoreTopics,
        img: 'dart.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Keywords'),
          const P(
              'If you never want to change a value then use final and const keywords'),
          const Li('final name = "Peter";'),
          const Li('const PI = 3.14;'),
          const P('Difference between final and const'),
          const Li(
              'final variable can only be set once and it is initialized when accessed'),
          const Li(
              'const variable is implicitly final but it is a compile-time constant(i.e. it is initialized during compilation)'),
          const P('Instance variable can be final but cannot be const.'),
          const Li(
              'If you want a Constant at Class level then make it static const'),
          Code(title: 'main.dart', code: code1, type: 'dart'),
          const H3('In simple'),
          const Li('const initialization is done at compile time'),
          const Li('final initialization can be done at run - time'),
        ],
      ),
    );
  }
}

var code1 = '''
void main() {
  finalConst(3);
}

void finalConst(int val) {
  // const value1 = val; // error
  const value1 = 3; // error
  print(value1);
  final value2 = val;
  print(value2);
}

class Circle {
  final color = 'Red';
  static const PI = 3.14;
}
''';
