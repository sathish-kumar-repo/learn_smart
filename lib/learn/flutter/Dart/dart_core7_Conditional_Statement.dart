import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/Flutter/Dart/topicsName/dartCoreTopics.dart';

class DartConditionalStatement extends StatefulWidget {
  const DartConditionalStatement({Key? key}) : super(key: key);

  @override
  State<DartConditionalStatement> createState() =>
      _DartConditionalStatementState();
}

class _DartConditionalStatementState extends State<DartConditionalStatement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 8,
        topicsName: dartCoreTopics,
        img: 'dart.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Conditional Statement'),
          const H3('If Statement'),
          Code(title: 'main.dart', code: code1, type: 'dart'),
          const H3('Switch Statement'),
          Code(title: 'main.dart', code: code2, type: 'dart'),
        ],
      ),
    );
  }
}

var code2 = '''

void main() {

	// Switch Case Statements: Applicable for only 'int' and 'String'

	String grade = 'A';

	switch (grade) {

		case 'A':
			print("Excellent grade of A");
			break;

		case 'B':
			print("Very Good !");
			break;

		case 'C':
			print("Good enough. But work hard");
			break;

		case 'F':
			print("You have failed");
			break;
		default:
			print("Invalid Grade");
	}
}
''';
var code1 = '''
void main() {

	// IF and ELSE Statements
	var salary = 15000;

	if (salary > 20000) {
		print("You got promotion. Congratulations !");
	} else {
		print("You need to work hard !");
	}

	// IF ELSE IF Ladder statements
	var marks = 70;

	if (marks >= 90 && marks < 100) {
		print("A+ grade");
	} else if (marks >= 80 && marks < 90) {
		print("A grade");
	} else if (marks >= 70 && marks < 80) {
		print("B grade");
	} else if (marks >= 60 && marks < 70) {
		print("C grade");
	} else if (marks > 30 && marks < 60) {
		print("D grade");
	} else if (marks >= 0 && marks < 30) {
		print("You have failed");
	} else {
		print("Invalid Marks. Please try again !");
	}
}
''';
