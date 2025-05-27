import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/Python/Pyhton%20Core/topicName/pythonTopics.dart';

class Instance_Attributes extends StatefulWidget {
  const Instance_Attributes({Key? key}) : super(key: key);

  @override
  State<Instance_Attributes> createState() => _Instance_AttributesState();
}

class _Instance_AttributesState extends State<Instance_Attributes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 34,
        topicsName: pythonTopics,
        img: 'Python.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Instance Attributes'),
          const P(
              'A class is a blueprint for the creation of different objects. When the objects get created to form the class, they no longer depend on the class attribute. Also, the class has no control over the attributes of the instances created.'),
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
{'__module__': '__main__', 'course': 'Java', '__dict__': <attribute '__dict__' of 'user' objects>, '__weakref__': <attribute '__weakref__' of 'user' objects>, '__doc__': None}
Java
{}
Java
{'course': 'C++'}
C++
Java
''';
var code1 = '''
"""
Namespace are availble in class and instance of class
"""

class user:
    # Class Attribute
    course = "Java"

# Create instance of class
o = user()

print(user.__dict__)

# Print Class attribute
print(user.course) 

print(o.__dict__)

# To set attribut in instance
print(o.course)
o.course = "C++"

print(o.__dict__)
print(o.course)


o2 = user()
print(o2.course)
''';
