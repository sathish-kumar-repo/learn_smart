import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/python/python_ln/topicName/pythonTopics.dart';

class Class_Method_Decorator extends StatefulWidget {
  const Class_Method_Decorator({Key? key}) : super(key: key);

  @override
  State<Class_Method_Decorator> createState() => _Class_Method_DecoratorState();
}

class _Class_Method_DecoratorState extends State<Class_Method_Decorator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 41,
        topicsName: pythonTopics,
        img: 'Python.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Class Method Decorator'),
          const P(
              'In Python, the @classmethod decorator is used to declare a method in the class as a class method that can be called using ClassName. MethodName() . The class method can also be called using an object of the class.'),
          const Note(
              'Class method common for all ,that means it is access by class name or object name'),
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
Name  :  Sathish   Age :  25
Name  :  Raja   Age :  45
<class '__main__.student'>
Total Admission : 2
<class '__main__.student'>
Total Admission : 2
''';
var code1 = '''
# Class Method Decorator
class student:
    count = 0

    def __init__(self, name, age):
        self.name = name
        self.age = age
        student.count += 1

    def printDetail(self):
        print("Name  : ", self.name, "  Age : ", self.age)

    @classmethod
    def total(cls):
        print(cls)
        return cls.count


o = student("Sathish", 25)
o.printDetail()
a = student("Raja", 45)
a.printDetail()

# Also use object to call the functions and object also access the class variable
print("Total Admission :", student.total())
print("Total Admission :", o.total())
''';
