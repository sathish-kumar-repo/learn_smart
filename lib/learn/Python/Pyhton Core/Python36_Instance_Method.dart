import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/Python/Pyhton%20Core/topicName/pythonTopics.dart';

class Instance_Method extends StatefulWidget {
  const Instance_Method({Key? key}) : super(key: key);

  @override
  State<Instance_Method> createState() => _Instance_MethodState();
}

class _Instance_MethodState extends State<Instance_Method> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 36,
        topicsName: pythonTopics,
        img: 'Python.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Instance Method'),
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
Name :  Sathish kumar
Age  :  25
Gender  :  Male
Name :  Sathish kumar
Age  :  25
Gender  :  Male
''';
var code1 = '''
# instance Methods
class Student:
    name = "Sathish kumar"
    age = 25

    # This is instance method
    def printall(self, gender):
        print("Name : ", Student.name)
        print("Age  : ", Student.age)
        print("Gender  : ", gender)


o = Student()
"""
o.printall()
Student.printall(o)
"""
o.printall("Male")
Student.printall(o, "Male")
''';
