import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/Flutter/Dart/topicsName/dartCoreTopics.dart';

class DartLambda extends StatefulWidget {
  const DartLambda({Key? key}) : super(key: key);

  @override
  State<DartLambda> createState() => _DartLambdaState();
}

class _DartLambdaState extends State<DartLambda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 23,
        topicsName: dartCoreTopics,
        img: 'dart.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Lambda Expression'),
          const Li('A function without a name'),
          const Li('Also known as anonymous function or lambda'),
          const Note('A Function in Dart is an Object'),
          Code(title: 'main.dart', code: code1, type: 'dart'),
        ],
      ),
    );
  }
}

var code1 = '''

// Objectives
// 1. Lambda Functions
// NOTE: A function in Dart is object

void main() {

	// Defining Lambda: 1st way
	Function addTwoNumbers = (int a, int b) {
		var sum = a + b;
		print(sum);
	};

	var multiplyByFour = (int number) {
		return number * 4;
	};

	// Defining Lambda: 2nd way: Function Expression: Using Short Hand Syntax or FAT Arrow ( '=>' )
	Function addNumbers = (int a, int b) => print(a + b);

	var multiplyFour = (int number) => number * 4;


	// Calling lambda function
	addTwoNumbers(2, 5);
	print(multiplyByFour(5));

	addNumbers(3, 7);
	print(multiplyFour(10));
}


// A example of Normal function
void addMyNumbers(int a, int b) {

	var sum = a + b;
	print(sum);
}
''';
