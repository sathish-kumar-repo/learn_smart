import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/dart_core/topicsName/dartCoreTopics.dart';

class DartClassAndObject extends StatefulWidget {
  const DartClassAndObject({Key? key}) : super(key: key);

  @override
  State<DartClassAndObject> createState() => _DartClassAndObjectState();
}

class _DartClassAndObjectState extends State<DartClassAndObject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 13,
        topicsName: dartCoreTopics,
        img: 'dart.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Class And Object'),
          Code(title: 'main.dart', code: code1, type: 'dart'),
        ],
      ),
    );
  }
}

var code1 = '''
void main() {
  var student1 = Student(); // One Object, student1 is reference variable
  student1.id = 23;
  student1.name = "Peter";
  print("\${student1.id} and \${student1.name}");

  student1.study();
  student1.sleep();

  var student2 = Student(); // One Object, student2 is reference variable
  student2.id = 45;
  student2.name = "Sam";
  print("\${student2.id} and \${student2.name}");
  student2.study();
  student2.sleep();
}

// Define states (properties) and behavior of a Student
class Student {
  int id = -1; // Instance or Field Variable, default value is -1
  String? name; // Instance or Field Variable, default value is null

  void study() {
    print("\${this.name} is now studying");
  }

  void sleep() {
    print("\${this.name} is now sleeping");
  }
}
''';
