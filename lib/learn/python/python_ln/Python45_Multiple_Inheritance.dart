import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/python/python_ln/topicName/pythonTopics.dart';

class Multiple_Inheritance extends StatefulWidget {
  const Multiple_Inheritance({Key? key}) : super(key: key);

  @override
  State<Multiple_Inheritance> createState() => _Multiple_InheritanceState();
}

class _Multiple_InheritanceState extends State<Multiple_Inheritance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 45,
        topicsName: pythonTopics,
        img: 'Python.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Multiple Inheritance'),
          const P(
              'Multiple Inheritance is a feature of object-oriented programming where a class can inherit attributes and methods from multiple parent classes. In Python, a class can inherit from multiple parent classes by specifying multiple base classes in the class definition, separated by commas. The class that inherits from multiple parent classes is called a derived or child class, while the parent classes are known as base or parent classes.'),
          const Img(name: 'MultipleInheritance.png', height: 300),
          const H3('Source Code'),
          Code(title: 'index.py', code: code1, type: 'python'),
          const H4('Output'),
          Code(title: 'terminal', code: code2, type: 'text'),
        ],
      ),
    );
  }
}

var code2 = '''
Riding Bicycle
Fishing in Rivers
Cooking Food
Playing Chess From Mother
''';
var code1 = '''
# Multiple Inheritance
 
class Father:
    def fishing(self):
        print("Fishing in Rivers")
 
    def chess(self):
        print("Playing Chess From Father")
 
 
class Mother:
    def cooking(self):
        print("Cooking Food")
 
    def chess(self):
        print("Playing Chess From Mother")
 
 
class Son(Mother,Father):
    def ride(self):
        print("Riding Bicycle")
o = Son()
o.ride()
o.fishing()
o.cooking()
o.chess()
''';
