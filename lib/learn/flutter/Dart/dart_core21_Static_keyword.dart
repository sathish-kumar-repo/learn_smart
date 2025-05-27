import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/Flutter/Dart/topicsName/dartCoreTopics.dart';

class DartStaticKeyword extends StatefulWidget {
  const DartStaticKeyword({Key? key}) : super(key: key);

  @override
  State<DartStaticKeyword> createState() => _DartStaticKeywordState();
}

class _DartStaticKeywordState extends State<DartStaticKeyword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 22,
        topicsName: dartCoreTopics,
        img: 'dart.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Static keyword'),
          const P('Static Variables are also known as Class Variables'),
          const P('Static methods are also known as Class Methods'),
          const P(''),
          const P('Static variables are lazily initialized'),
          const Li(
              'i.e. they are not initialized until they are used in program'),
          const Li('so they consume memory only when they are used'),
          const P(''),
          const P(
              'Static methods has nothing to do with class object or instance'),
          const P(''),
          const P('From a Static Method'),
          const Li('You can only access Static Method and Static Variables'),
          const Li(
              'But you cannot access Normal Instance Variables and Methods of the class'),
          Code(title: 'main.dart', code: code1, type: 'dart'),
        ],
      ),
    );
  }
}

var code1 = '''
// Objectives
// 1. Static Methods and Variables

void main() {
  var circle1 = Circle();
  //	circle1.pi;     // 4 bytes

  var circle2 = Circle();
  //	circle2.pi;     // 4 bytes

  // 8 bytes      // waste of extra 4 bytes

  Circle.pi; // 4 bytes
  Circle.pi; // No more memory will be allocated .

  // Circle.pi = 111; // error because its const

  //	circle.calculateArea();

  //	print(Circle.pi);           // Syntax to call Static Variable

  // Circle.calculateArea(); // Syntax to call Static Method
}

class Circle {
  static const double pi = 3.14;
  static int maxRadius = 5;

  String? color;

  static void calculateArea() {
    print("Some code to calculate area of Circle");
    // myNormalFunction();     // Not allowed to call instance functions
    // this.color;             // You cannot use 'this' keyword and even cannot access Instance variables
    print(pi); // but access
    print(maxRadius); // but access
  }

  void myNormalFunction() {
    calculateArea();
    // Circle.calculateArea();
    this.color = "Red";
    print(pi);
    print(maxRadius);
  }
}
''';
