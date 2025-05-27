import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/Flutter/Dart/topicsName/dartCoreTopics.dart';

class DartMapAndHashMap extends StatefulWidget {
  const DartMapAndHashMap({Key? key}) : super(key: key);

  @override
  State<DartMapAndHashMap> createState() => _DartMapAndHashMapState();
}

class _DartMapAndHashMapState extends State<DartMapAndHashMap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 28,
        topicsName: dartCoreTopics,
        img: 'dart.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Map And HashMap'),
          Code(title: 'main.dart', code: code1, type: 'dart'),
        ],
      ),
    );
  }
}

var code1 = '''

// Objectives
// 1. Maps
// --> KEY has to be unique
// --> VALUE can be duplicate

void main() {

	Map<String, int> countryDialingCode = {         // Method 1: Using Literal 
		"USA": 1,
		"INDIA": 91,
		"PAKISTAN": 92
	};


	Map<String, String> fruits = Map();             // Method 2: Using Constructor
	fruits["apple"] = "red";
	fruits["banana"] = "yellow";
	fruits["guava"]  = "green";

	fruits.containsKey("apple");                        // returns true if the KEY is present in Map
	fruits.update("apple", (value) => "green");         // Update the VALUE for the given KEY
	fruits.remove("apple");                             // removes KEY and it's VALUE and returns the VALUE
	fruits.isEmpty;                                     // returns true if the Map is empty
	fruits.length;                                      // returns number of elements in Map
//	fruits.clear();                                     // Deletes all elements

	print(fruits["apple"]);

	print("\n");

	for (String key in fruits.keys) {           // Print all keys
		print(key);
	}

	print("\n");

	for (String value in fruits.values) {           // Print all values
		print(value);
	}

	print("\n");

	fruits.forEach((key, value) => print("key: \$key and value: \$value"));   // Using Lambda

}
''';
