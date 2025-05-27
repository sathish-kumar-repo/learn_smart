import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/Flutter/Dart/topicsName/dartCoreTopics.dart';

class DartMethodOveriding extends StatefulWidget {
  const DartMethodOveriding({Key? key}) : super(key: key);

  @override
  State<DartMethodOveriding> createState() => _DartMethodOveridingState();
}

class _DartMethodOveridingState extends State<DartMethodOveriding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 18,
        topicsName: dartCoreTopics,
        img: 'dart.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Method Overriding'),
          const P(
              'Method Overriding is a mechanisms by which the child class redefines a method in its parent class'),
          Code(title: 'main.dart', code: code1, type: 'dart'),
        ],
      ),
    );
  }
}

var code1 = '''

// Objectives
// 1. Exploring Method Overriding

void main() {

	var dog = Dog();
	dog.eat();

	print(dog.color);
}

class Animal {

	String color = "brown";

	void eat() {
		print("Animal is eating !");
	}
}

class Dog extends Animal {

	String? breed;

	String color = "Black";     // Property Overriding

	void bark() {
		print("Bark !");
	}

	// Method Overriding
	void eat() {
		print("Dog is eating !");
		super.eat();
		print("More food to eat");
	}
}
''';
