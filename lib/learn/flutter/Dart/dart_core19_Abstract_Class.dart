import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/Flutter/Dart/topicsName/dartCoreTopics.dart';

class DartAbstractClass extends StatefulWidget {
  const DartAbstractClass({Key? key}) : super(key: key);

  @override
  State<DartAbstractClass> createState() => _DartAbstractClassState();
}

class _DartAbstractClassState extends State<DartAbstractClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 20,
        topicsName: dartCoreTopics,
        img: 'dart.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Abstract Class and Method'),
          const H3('Abstract Class'),
          const Li(
              'To make a method abstract, use semicolon(;) instead of method body.'),
          const Li('Abstract method can only exist with Abstract class'),
          const Li('You need to override Abstract methods in sub-class'),
          const H3('Abstract Method'),
          const Li('Use abstract keyword to declare Abstract Class'),
          const Li(
              'Abstract class can have Abstract Methods, Normal Methods and Instance Variables'),
          const Li(
              'The Abstract class cannot be instantiated, you cannot create object'),
          Code(title: 'main.dart', code: code1, type: 'dart'),
        ],
      ),
    );
  }
}

var code1 = '''
// Objectives
// 1. Abstract Method
// 2. Abstract Class

void main() {
//	var shape = Shape();        // Error. Cannot instantiate Abstract Class

  var rectangle = Rectangle();
  rectangle.draw();

  var circle = Circle();
  circle.draw();
}

abstract class Shape {
  // Define your Instance variable if needed
  int? x;
  int? y;

  void draw(); // Abstract Method

  void myNormalFunction() {
    // Some code
  }
}

class Rectangle extends Shape {
  void draw() {
    print("Drawing Rectangle.....");
  }
}

class Circle extends Shape {
  void draw() {
    print("Drawing Circle.....");
  }
}
''';
