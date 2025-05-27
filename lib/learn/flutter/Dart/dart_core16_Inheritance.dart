import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/Flutter/Dart/topicsName/dartCoreTopics.dart';

class DartInheritance extends StatefulWidget {
  const DartInheritance({Key? key}) : super(key: key);

  @override
  State<DartInheritance> createState() => _DartInheritanceState();
}

class _DartInheritanceState extends State<DartInheritance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 17,
        topicsName: dartCoreTopics,
        img: 'dart.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Inheritance'),
          const P(
              'Inheritance is a mechanism in which one object acquires properties of its parent class object'),
          const P('Super class of any class is Object'),
          const Li('Provides default implementation of:'),
          const P(
              '       toString(), returns the String representation of the object'),
          const P(
              '       hashCode Getter, returns the Hash Code of the object'),
          const P('       operator ==, to compare two objects'),
          const H3('Advantages:'),
          const Li('Code re-usability'),
          const Li('Method Overriding'),
          const Li('Cleaner code: no repetition'),
          Code(title: 'main.dart', code: code1, type: 'dart'),
        ],
      ),
    );
  }
}

var code1 = '''
// Objectives
// 1. Exploring Inheritance

void main() {
  var dog = Dog();
  dog.breed = "Labrador";
  dog.color = "Black";
  dog.bark();
  dog.eat();

  var cat = Cat();
  cat.color = "White";
  cat.age = 6;
  cat.eat();
  cat.meow();

  var animal = Animal();
  animal.color = "brown";
  animal.eat();
}

class Animal {
  String? color;

  void eat() {
    print("Eat !");
  }
}

class Dog extends Animal {
  // Dog is Child class or sub class, Animal is super or parent class

  String? breed;

  void bark() {
    print("Bark !");
  }
}

class Cat extends Animal {
  // Cat is Child class or sub class, Animal is super or parent class

  int? age;

  void meow() {
    print("Meow !");
  }
}
''';
