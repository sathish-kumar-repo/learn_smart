import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/dart_core/topicsName/dartCoreTopics.dart';

class DartHelloWorld extends StatefulWidget {
  const DartHelloWorld({Key? key}) : super(key: key);

  @override
  State<DartHelloWorld> createState() => _DartHelloWorldState();
}

class _DartHelloWorldState extends State<DartHelloWorld> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 3,
        topicsName: dartCoreTopics,
        img: 'dart.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Hello World'),
          Code(title: 'main.dart', code: code1, type: 'dart'),
        ],
      ),
    );
  }
}

var code1 = '''
void main() {
  // This is my first line of code
  print("Hello World"); // this is another comment ....

  print("This is my first application");

  // Performing arithmetic operation
  print(12 / 4);

  // Printing out boolean value
  print(false);
}
''';
