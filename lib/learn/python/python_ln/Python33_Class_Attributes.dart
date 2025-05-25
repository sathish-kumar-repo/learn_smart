import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/python/python_ln/topicName/pythonTopics.dart';

class Class_Attributes extends StatefulWidget {
  const Class_Attributes({Key? key}) : super(key: key);

  @override
  State<Class_Attributes> createState() => _Class_AttributesState();
}

class _Class_AttributesState extends State<Class_Attributes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 33,
        topicsName: pythonTopics,
        img: 'Python.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Class Attributes'),
          const P(
              'Class attributes belong to the class itself they will be shared by all the instances. Such attributes are defined in the class body parts usually at the top, for legibility.'),
          const H3('1. getattr ( object , name [ , default ] )'),
          const Li(
              'object => object whose named attribute\'s value is to be returned'),
          const Li('name => string that contains the attribute\'s name'),
          const Li(
              'default ( Optional ) => The value is returned when the named attribute is not found'),
          const H3('2. setattr( object , name , value )'),
          const Li(
              'object => object whose named attribute value is to be assigning.'),
          const Li('name => The assigned variable name'),
          const Li('default => The assigned variable value.'),
          const H3('3. delattr( object , name )'),
          const Li(
              'object => object whose named attribute value is to be removed.'),
          const Li('name => The attribute which is to be removed.'),
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
Sathish Kumar
25
No Such Attribute Found
Sathish Kumar
25
Sam
Male
Salem
{'__module__': '__main__', 'name': 'Sam', 'age': 25, '__dict__': <attribute '__dict__' of 'Student' objects>, '__weakref__': <attribute '__weakref__' of 'Student' objects>, '__doc__': None, 'gender': 'Male', 'city': 'Salem'}
{'__module__': '__main__', 'name': 'Sam', 'age': 25, '__dict__': <attribute '__dict__' of 'Student' objects>, '__weakref__': <attribute '__weakref__' of 'Student' objects>, '__doc__': None, 'gender': 'Male'}
{'__module__': '__main__', 'name': 'Sam', 'age': 25, '__dict__': <attribute '__dict__' of 'Student' objects>, '__weakref__': <attribute '__weakref__' of 'Student' objects>, '__doc__': None}
''';
var code1 = '''
class Student:
    name = "Sathish Kumar"
    age = 25


# Attributes means variable or data

""" This is Class Attributes """

# To access the attribut using getattr method
print(getattr(Student, "name"))
print(getattr(Student, "age"))
print(getattr(Student, "gender", "No Such Attribute Found"))

# To access the attribut using Dot Notation
print(Student.name)
print(Student.age)

# Update Attribute to the class
setattr(Student, "name", "Sam")
print(Student.name)

# Set Attribute to the class using setattr method
setattr(Student, "gender", "Male")
print(Student.gender)

# Set Attribute to the class using Dot notation
Student.city = "Salem"
print(Student.city)

# Store attributes and Functions like Dictionary form that is MappingProxyObject( or Type)
print(Student.__dict__)

# To delete the attrubute in Class using delattr method
delattr(Student, "city")
print(Student.__dict__)

# To delete the attrubute in Class using Dot Notation and del command
del Student.gender
print(Student.__dict__)

"""
MappingProxyType . This type is a read-only proxy for a dict or other mapping. Python uses this type internally for important dictionaries, which is why you can't monkey-patch built-in types willy-nilly. The only change in Python 3.3 was to expose this type for user code.05
"""
''';
