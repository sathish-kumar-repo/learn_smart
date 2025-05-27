import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/Flutter/Dart/topicsName/dartCoreTopics.dart';

class DartLexicalClosures extends StatefulWidget {
  const DartLexicalClosures({Key? key}) : super(key: key);

  @override
  State<DartLexicalClosures> createState() => _DartLexicalClosuresState();
}

class _DartLexicalClosuresState extends State<DartLexicalClosures> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 25,
        topicsName: dartCoreTopics,
        img: 'dart.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Lexical Closures'),
          const Li('Closure is a special function'),
          const Li(
              'Within a closure you can mutate (modify) the values of variables present in the parent scope'),
          const P(''),
          const Li(
              'In Java 8, you are not allowed to modify parent scope variables'),
          Code(title: 'main.dart', code: code1, type: 'dart'),
        ],
      ),
    );
  }
}

var code1 = '''


// Objective
// 1. Closures


void main() {

	// Definition 1:
	// A closure is a function that has access to the parent scope, even after the scope has closed.

	String message = "Dar is good";

	Function showMessage = () {
		message = "Dart is awesome";
		print(message);
	};

	showMessage();


	// Definition 2:
	// A closure is a function object that has access to variables in its lexical scope,
	// even when the function is used outside of its original scope.

	Function talk = () {

		String msg = "Hi";

		Function say = () {
			msg = "Hello";
			print(msg);
		};

		return say;
	};

	Function speak = talk();

	speak();        // talk()       // say()        //  print(msg)      // "Hello"
}
''';
