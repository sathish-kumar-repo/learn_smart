import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/python/python_ln/topicName/pythonTopics.dart';

class Class_and_Object extends StatefulWidget {
  const Class_and_Object({Key? key}) : super(key: key);

  @override
  State<Class_and_Object> createState() => _Class_and_ObjectState();
}

class _Class_and_ObjectState extends State<Class_and_Object> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 32,
        topicsName: pythonTopics,
        img: 'Python.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Class and Object'),
          const P(
              'Python is an object oriented programming language. Almost everything in Python is an object is simply a collection of data (variables) and methods (functions) that act on those data. A Class is like an object constructor, or a "blueprint" for creating objects. You can create many objects from the same class type.'),
          const Li(
              'A class is a blueprint or seves as a template from which individual objects are created.'),
          const Li(
              'Object is an instance of a class which consists of methods and properties'),
          const Img(name: 'classCar.png', height: 300),
          const H3('Example'),
          const P(
              '   A dog has states - color, name, breed as well as behaviors – wagging the tail, barking, eating. An object is an instance of a class.'),
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
<class 'int'>
<class 'type'>
True
True
<class '__main__.car'>
''';
var code1 = '''
class car:
    pass


a = 10
print(type(a))
print(type(car))
swift = car()

# To check instance of class
print(isinstance(swift, car))
print(isinstance(a, int))
print(type(swift))
# <class '__main__.car'>
# current file kula car intha class iruku
# Main program module kula irukura car endra class
''';
