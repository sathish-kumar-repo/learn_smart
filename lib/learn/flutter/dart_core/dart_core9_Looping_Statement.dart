import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/dart_core/topicsName/dartCoreTopics.dart';

class DartLoopingStatement extends StatefulWidget {
  const DartLoopingStatement({Key? key}) : super(key: key);

  @override
  State<DartLoopingStatement> createState() => _DartLoopingStatementState();
}

class _DartLoopingStatementState extends State<DartLoopingStatement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 10,
        topicsName: dartCoreTopics,
        img: 'dart.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Looping Statement'),
          const Img(name: 'loop_dart.jpg', height: 300),
          const H3('For loop'),
          Code(title: 'main.dart', code: code1, type: 'dart'),
          const H3('While loop'),
          Code(title: 'main.dart', code: code2, type: 'dart'),
          const H3('Do - While loop'),
          Code(title: 'main.dart', code: code3, type: 'dart'),
          const H3('Break keyword'),
          Code(title: 'main.dart', code: code4, type: 'dart'),
          const H3('Continue keyword'),
          Code(title: 'main.dart', code: code5, type: 'dart'),
        ],
      ),
    );
  }
}

var code5 = '''

void main() {

	// CONTINUE keyword
	// Using Labels

	myLoop: for (int i = 1; i <= 3; i++) {

		myInnerLoop: for (int j = 1; j <= 3; j++) {

			if (i == 2 && j == 2) {
				continue myLoop;
			}
			print("\$i  \$j");
		}
	}
}
''';
var code4 = '''

void main() {

	// BREAK keyword
	// Using Labels
	// Nested FOR Loop

	myOuterLoop: for (int i = 1; i <= 3; i++) {

		innerLoop: for (int j = 1; j <= 3; j++) {
			print("\$i \$j");

			if (i == 2 && j == 2) {
				break myOuterLoop;
			}
		}
	}
}
''';
var code3 = '''

void main() {

	// DO-WHILE Loop
	// WAP to find the even numbers between 1 to 10

	int i = 1;

	do {

		if ( i % 2 == 0) {
			print(i);
		}

		i++;
	} while ( i <= 10);
}
''';
var code2 = '''

void main() {

	// WHILE Loop
	// WAP to find the even numbers between 1 to 10

	var  i = 1;
	while (i <= 10) {

		if (i % 2 == 0) {
			print(i);
		}

		i++;
	}
}
''';
var code1 = '''

void main() {

	// FOR Loop

	// WAP to find the even numbers between 1 to 10

	for (int i = 1; i <= 10; i++) {

		if ( i % 2 == 0) {
			print(i);
		}
	}


	// for ..in loop
	List planetList = ["Mercury", "Venus", "Earth", "Mars"];

	for (String planet in planetList) {
		print(planet);
	}
}
''';
