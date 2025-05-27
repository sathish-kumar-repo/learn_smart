import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/Python/Pyhton%20Core/topicName/pythonTopics.dart';

class Class_Method extends StatefulWidget {
  const Class_Method({Key? key}) : super(key: key);

  @override
  State<Class_Method> createState() => _Class_MethodState();
}

class _Class_MethodState extends State<Class_Method> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 35,
        topicsName: pythonTopics,
        img: 'Python.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Class Method'),
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
Name :  Sathish Kumar
Age  :  25
{'__module__': '__main__', 'name': 'Sathish Kumar', 'age': 25, 'printall': <function Student.printall at 0x00000234A0CD8D60>, '__dict__': <attribute '__dict__' of 'Student' objects>, '__weakref__': <attribute '__weakref__' of 'Student' objects>, '__doc__': None}
<function Student.printall at 0x00000234A0CD8D60>
Name :  Sathish Kumar
Age  :  25
Name :  Sathish Kumar
Age  :  25
''';
var code1 = '''
# Class Methods
class Student:
    name = "Sathish Kumar"
    age = 25

    def printall():
        print("Name : ", Student.name)
        print("Age  : ", Student.age)

 
Student.printall()
print(Student.__dict__)
 
print(getattr(Student, "printall"))
getattr(Student, "printall")()
 
Student.__dict__['printall']()
''';
