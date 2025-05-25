import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/dart_core/topicsName/dartCoreTopics.dart';

class DartHigherOrderFunction extends StatefulWidget {
  const DartHigherOrderFunction({Key? key}) : super(key: key);

  @override
  State<DartHigherOrderFunction> createState() =>
      _DartHigherOrderFunctionState();
}

class _DartHigherOrderFunctionState extends State<DartHigherOrderFunction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 24,
        topicsName: dartCoreTopics,
        img: 'dart.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Higher Order Function'),
          const Li('Can accept function as a parameter'),
          const Li('Can return a function'),
          const Li('Or can do both'),
          Code(title: 'main.dart', code: code1, type: 'dart'),
        ],
      ),
    );
  }
}

var code1 = '''


// Objectives
// 1. Higher-Order Function:
// How to pass function as parameter?
// How to return a function from another function?


void main() {

	// Example One: Passing Function to Higher-Order Function
	Function addNumbers = (a, b) => print(a + b);
	someOtherFunction("Hello", addNumbers);


	// Example Two: Receiving Function from Higher-Order Function
	var myFunc = taskToPerform();
	print(myFunc(10));      // multiplyFour(10)         // number * 4       // 10 * 4       // OUTPUT: 40
}



// Example one: Accepts function as parameter
void someOtherFunction(String message, Function myFunction) {       // Higher-Order Function

	print(message);
	myFunction(2, 4);       // addNumbers(2, 4)    // print(a + b);   // print(2 + 4)       // OUTPUT: 6
}


// Example two: Returns a function
Function taskToPerform() {       // Higher-Order Function

	Function multiplyFour = (int number) => number * 4;
	return multiplyFour;
}
''';
