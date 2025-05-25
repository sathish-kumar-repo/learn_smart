import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/flutter/dart_core/topicsName/dartCoreTopics.dart';

class DartInterface extends StatefulWidget {
  const DartInterface({Key? key}) : super(key: key);

  @override
  State<DartInterface> createState() => _DartInterfaceState();
}

class _DartInterfaceState extends State<DartInterface> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 21,
        topicsName: dartCoreTopics,
        img: 'dart.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Interface'),
          const P('Dart does not have any syntax to declare INTERFACE'),
          const P('An INTERFACE in dart is a Normal Class'),
          const P(
              'An INTERFACE is used when you need concrete implementation of all of its functions within is\'s sub class'),
          const Li(
              'It is mandatory to override all methods in the implementing class'),
          const P('You cna implement multiple classes but'),
          const Li('You cannot extend multiple classes during inheritance'),
          Code(title: 'main.dart', code: code1, type: 'dart'),
        ],
      ),
    );
  }
}

var code1 = '''
// Objectives
// 1. Interface

void main() {
  var tv = Television();
  tv.volumeUp();
  tv.volumeDown();
}

class Remote {
  void volumeUp() {
    print("______Volume Up from Remote_______");
  }

  void volumeDown() {
    print("______Volume Down from Remote_______");
  }
}

class AnotherClass {
  void justAnotherMethod() {
    // Code
  }
}

// Here Remote and AnotherClass acts as Interface
class Television implements Remote, AnotherClass {
  void volumeUp() {
//		super.volumeUp();       // Not allowed to call super while implementing a class as Interface
    print("______Volume Up in Television_______");
  }

  void volumeDown() {
    print("______Volume Down in Television_______");
  }

  void justAnotherMethod() {
    print("Some code");
  }
}
''';
