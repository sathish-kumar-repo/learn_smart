import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/Flutter/Dart/topicsName/dartCoreTopics.dart';

class DartFunctions extends StatefulWidget {
  const DartFunctions({Key? key}) : super(key: key);

  @override
  State<DartFunctions> createState() => _DartFunctionsState();
}

class _DartFunctionsState extends State<DartFunctions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 11,
        topicsName: dartCoreTopics,
        img: 'dart.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Functions and Parameters'),
          const H2('Function'),
          const H3('Define and call the function'),
          Code(title: 'main.dart', code: code1, type: 'dart'),
          const H3('Expression in Function'),
          Code(title: 'main.dart', code: code2, type: 'dart'),
          const H2('Parameters'),
          const Img(name: 'function_dart.jpg', height: 300),
          const H3('Required and Optional Positional Parameters'),
          Code(title: 'main.dart', code: code3, type: 'dart'),
          const H3('Named Parameters'),
          const P('Prevent errors if there are large number of parameters'),
          Code(title: 'main.dart', code: code4, type: 'dart'),
          const H3('Default Parameters'),
          const P('You can assign default values to parameters'),
          Code(title: 'main.dart', code: code5, type: 'dart'),
        ],
      ),
    );
  }
}

var code5 = '''

// Optional Default Parameters

void main() {

	findVolume(10);     // Default value comes into action
	print("");

	findVolume(10, breadth: 5, height: 30);     // Overrides the old value with new one
	print("");

	findVolume(10, height: 30, breadth: 5);     // Making use of Named Parameters with Default values
}


void findVolume(int length, {int breadth = 2, int height = 20}) {

	print("Lenght is \$length");
	print("Breadth is \$breadth");
	print("Height is \$height");

	print("Volume is \${length * breadth * height}");
}
''';
var code4 = '''
// Optional Named Parameters

void main() {
  findVolume(10, breadth: 5, height: 20);
  print("");

  findVolume(10,
      height: 20, breadth: 5); // Sequence doesn't matter in Named Parameter
}

void findVolume(int length, {int? breadth, int? height}) {
  print("Length is \$length");
  print("Breadth is \$breadth");
  print("Height is \$height");

  print("Volume is \${length * breadth! * height!}");
}
''';
var code3 = '''

// 1. Required Parameters
// 2. Optional Positional Parameters

void main() {

	printCities("New York", "New Delhi", "Sydney");
	print("");

	printCountries("USA");  // You can skip the Optional Positional Parameters

}

// Required Parameters
void printCities(String name1, String name2, String name3) {

	print("Name 1 is \$name1");
	print("Name 2 is \$name2");
	print("Name 3 is \$name3");
}

// Optional Positional Parameters
void printCountries(String name1, [String? name2, String? name3]) {

	print("Name 1 is \$name1");
	print("Name 2 is \$name2");
	print("Name 3 is \$name3");
}
''';
var code2 = '''
// OBJECTIVE: Expression in Function: SHORT HAND SYNTAX

void main() {

	findPerimeter(4, 2);

	int rectArea = getArea(10, 5);
	print("The area is \$rectArea");
}

void findPerimeter(int length, int breadth) => print("The perimeter is \${2 * (length + breadth)}");

int getArea(int length, int breadth) => length * breadth;


// "=>" is known as FAT ARROW
// "=> expression" is a SHORT HAND SYNTAX for { return expression; }
// Example "=> length * breadth" is SHORT HAND SYNTAX for { return length * breadth; }
''';
var code1 = '''
// OBJECTIVES
// 1. Define a Function
// 2. Pass parameters to a Function
// 3. Return value from a Function
// 4. Test that by default a Function returns null

void main() {

	findPerimeter(4, 2);

	int rectArea = getArea(10, 5);
	print("The area is \$rectArea");
}

void findPerimeter(int length, int breadth) {

	int perimeter = 2 * (length + breadth);
	print("The perimeter is \$perimeter");
}

int getArea(int length, int breadth) {

	int area = length * breadth;
	return area;
}
''';
