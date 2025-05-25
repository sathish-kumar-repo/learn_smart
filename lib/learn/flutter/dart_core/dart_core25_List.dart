import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/dart_core/topicsName/dartCoreTopics.dart';

class DartList extends StatefulWidget {
  const DartList({Key? key}) : super(key: key);

  @override
  State<DartList> createState() => _DartListState();
}

class _DartListState extends State<DartList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 26,
        topicsName: dartCoreTopics,
        img: 'dart.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('List'),
          const H3('Fixed-length list'),
          const Li('Length once defined cannot be changed'),
          Code(title: 'main.dart', code: code1, type: 'dart'),
          const H3('Growable list'),
          const Li('Length is dynamic'),
          Code(title: 'main.dart', code: code2, type: 'dart'),
        ],
      ),
    );
  }
}

var code2 = '''

// Objectives
// 1. Growable list

void main() {
	// Elements:    N   21  12
	// Index:       0   1   2

	List<String> countries = ["USA", "INDIA", "CHINA"];     // Growable List : METHOD 1
	countries.add("Nepal");
	countries.add("Japan");


	List<int> numbersList = List();                         // Growable List: METHOD 2
	numbersList.add(73);    // Insert Operation
	numbersList.add(64);
	numbersList.add(21);
	numbersList.add(12);

	numbersList[0] = 99;    // Update operation
	numbersList[1] = null;  // Delete operation

	print(numbersList[0]);

	numbersList.remove(99);
	numbersList.add(24);
	numbersList.removeAt(3);
//	numbersList.clear();

	print("\n");

	for (int element in numbersList) {                  // Using Individual Element ( Objects )
		print(element);
	}

	print("\n");

	numbersList.forEach((element) => print(element));   // Using Lambda

	print("\n");

	for (int i = 0; i < numbersList.length; i++) {      // Using Index
		print(numbersList[i]);
	}

}
''';
var code1 = '''
// Objectives
// 1. Fixed-length list

void main() {
  // Elements:    N   N   N   N   N
  // Index:       0   1   2   3   4

  List<int> numbersList = List(5); // Fixed-length list
  numbersList[0] = 73; // Insert operation
  numbersList[1] = 64;
  numbersList[3] = 21;
  numbersList[4] = 12;

  numbersList[0] = 99; // Update operation
  numbersList[1] = null; // Delete operation

  print(numbersList[0]);
  print("\n");

//	numbersList.remove(73);                 // Not supported in fixed-length list
//	numbersList.add(24);                    // Not supported in fixed-length list
//	numbersList.removeAt(3);                // Not supported in fixed-length list
//	numbersList.clear();                    // Not supported in fixed-length list

  for (int element in numbersList) {
    // Using Individual Element (Objects)
    print(element);
  }

  print("\n");

  numbersList.forEach((element) => print(element)); // Using Lambda

  print("\n");

  for (int i = 0; i < numbersList.length; i++) {
    // Using Index
    print(numbersList[i]);
  }
}
''';
