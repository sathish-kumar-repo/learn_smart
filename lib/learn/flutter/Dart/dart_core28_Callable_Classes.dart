import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/Flutter/Dart/topicsName/dartCoreTopics.dart';

class DartCallableClasses extends StatefulWidget {
  const DartCallableClasses({Key? key}) : super(key: key);

  @override
  State<DartCallableClasses> createState() => _DartCallableClassesState();
}

class _DartCallableClassesState extends State<DartCallableClasses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 29,
        topicsName: dartCoreTopics,
        img: 'dart.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Callable Classes'),
          const P('When Dart is called like a function'),
          const Li('Implement call() function'),
          Code(title: 'main.dart', code: code1, type: 'dart'),
        ],
      ),
    );
  }
}

var code1 = '''

// Objectives
// 1. Callable class
// --> Class treated as Function.
// --> Implement call() method

void main() {

	var personOne = Person();
	var msg = personOne(25, "Peter");
	print(msg);
}

class Person {
	
	String call(int age, String name) {
		return "The name of the person is \$name and age is \$age";
	}
}
''';
