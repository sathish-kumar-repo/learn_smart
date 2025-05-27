import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/Flutter/Dart/topicsName/dartCoreTopics.dart';

class DartConstructorDuringInheritance extends StatefulWidget {
  const DartConstructorDuringInheritance({Key? key}) : super(key: key);

  @override
  State<DartConstructorDuringInheritance> createState() =>
      _DartConstructorDuringInheritanceState();
}

class _DartConstructorDuringInheritanceState
    extends State<DartConstructorDuringInheritance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 19,
        topicsName: dartCoreTopics,
        img: 'dart.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Constructor During Inheritance'),
          Code(title: 'main.dart', code: code1, type: 'dart'),
          const H3('Points to Note'),
          const Li(
              'By default, a constructor in a subclass calls the superclass\'s no=argument constructor.'),
          const Li(
              'Parent class constructor is always called before child class constructor'),
          const Li(
              'If default constructor is missing in Parent class, then you must manually call one of the constructors in Super class'),
        ],
      ),
    );
  }
}

var code1 = '''
// Objectives
// 1. Inheritance with Default Constructor and Parameterised Constructor
// 2. Inheritance with Named Constructor

void main() {
  var dog1 = Dog("Labrador", "Black");

  print("");

  var dog2 = Dog("Pug", "Brown");

  print("");

  var dog3 = Dog.myNamedConstructor("German Shepherd", "Black-Brown");
}

class Animal {
  late String color;

  Animal(String color) {
    this.color = color;
    print("Animal class constructor");
  }

  Animal.myAnimalNamedConstrctor(String color) {
    print("Animal class named constructor");
  }
}

class Dog extends Animal {
  late String breed;

  Dog(String breed, String color) : super(color) {
    this.breed = breed;
    print("Dog class constructor");
  }

  Dog.myNamedConstructor(String breed, String color)
      : super.myAnimalNamedConstrctor(color) {
    this.breed = breed;
    print("Dog class Named Constructor");
  }
}
''';
