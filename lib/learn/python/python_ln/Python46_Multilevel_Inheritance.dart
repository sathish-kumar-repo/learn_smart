import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/python/python_ln/topicName/pythonTopics.dart';

class Multilevel_Inheritance extends StatefulWidget {
  const Multilevel_Inheritance({Key? key}) : super(key: key);

  @override
  State<Multilevel_Inheritance> createState() => _Multilevel_InheritanceState();
}

class _Multilevel_InheritanceState extends State<Multilevel_Inheritance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 46,
        topicsName: pythonTopics,
        img: 'Python.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Multilevel Inheritance'),
          const P(
              'Multilevel Inheritance is a mechanism in object-oriented programming where a class inherits from another class, which in turn inherits from another class. This process continues until the topmost class is reached. In this way, inheritance relationships form a hierarchy of classes, with the base class being at the top, and the derived classes being at the bottom. The derived class inherits the attributes and behavior of the class it inherits from and can also add new attributes and behavior to those inherited.'),
          const Img(name: 'MultilevelInheritance.png', height: 300),
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
Grandpa House
Father's Bike
Son Have a Book
''';
var code1 = '''
# Multilevel Inheritance
 
class GrandFather:
    def ownHouse(self):
        print("Grandpa House")
 
 
class Father(GrandFather):
    def ownBike(self):
        print("Father's Bike")
 
 
class Son(Father):
    def ownBook(self):
        print("Son Have a Book")
 
 
o = Son()
o.ownHouse()
o.ownBike()
o.ownBook()
''';
