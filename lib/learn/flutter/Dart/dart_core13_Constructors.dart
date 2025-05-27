import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/Flutter/Dart/topicsName/dartCoreTopics.dart';

class DartConstructors extends StatefulWidget {
  const DartConstructors({Key? key}) : super(key: key);

  @override
  State<DartConstructors> createState() => _DartConstructorsState();
}

class _DartConstructorsState extends State<DartConstructors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 14,
        topicsName: dartCoreTopics,
        img: 'dart.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Constructors'),
          const H3('Properties'),
          const Li('Used to create object'),
          const Li(
              'You can initialize your instance or field variables within Constructors'),
          const Li(
              'You cannot have default and parameterized Constructors at the same time'),
          const Li('You can have as many Named Constructor as you want to'),
          Code(title: 'main.dart', code: code1, type: 'dart'),
        ],
      ),
    );
  }
}

var code1 = '''
// Objectives
// 1. Default Constructor
// 2. Parameterized Constructor
// 3. Named Constructor
// 4. Constant Constructor

void main() {
  var student1 =
      Student(23, "Peter"); // One Object, student1 is reference variable
  print("\${student1.id} and \${student1.name}");

  student1.study();
  student1.sleep();

  var student2 =
      Student(45, "Sam"); // One Object, student2 is reference variable
  print("\${student2.id} and \${student2.name}");

  student2.study();
  student2.sleep();

  var student3 = Student
      .myCustomConstructor(); // One object, student3 is a reference variable
  student3.id = 54;
  student3.name = "Rahul";
  print("\${student3.id} and \${student3.name}");

  var student4 = Student.myAnotherNamedConstructor(87, "Paul");
  print("\${student4.id} and \${student4.name}");
}

// Define states (properties) and behavior of a Student
class Student {
  int id = -1;
  String? name;

  Student(this.id, this.name); // Parameterised Constructor

  Student.myCustomConstructor() {
    // Named Constructor
    print("This is my custom constructor");
  }

  Student.myAnotherNamedConstructor(this.id, this.name); // Named Constructor

  void study() {
    print("\${this.name} is now studying");
  }

  void sleep() {
    print("\${this.name} is now sleeping");
  }
}
''';
