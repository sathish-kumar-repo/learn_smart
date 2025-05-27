import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/Python/Pyhton%20Core/topicName/pythonTopics.dart';

class Static_Method extends StatefulWidget {
  const Static_Method({Key? key}) : super(key: key);

  @override
  State<Static_Method> createState() => _Static_MethodState();
}

class _Static_MethodState extends State<Static_Method> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 42,
        topicsName: pythonTopics,
        img: 'Python.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Static Method'),
          const P(
              'A static method in Python is a method that belongs to a class rather than an instance of the class. It can be called on the class itself, rather than on an instance of the class. Static methods are defined using the @staticmethod decorator, and do not have access to any class-specific state. They are typically used for utility functions that don\'t need to access any instance-specific data.'),
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
Name :  Sathish   Age :  25
Welcome to our Institution
Name :  Raja   Age :  45
Welcome to our Institution
''';
var code1 = '''
# Static Method in Python


class student:
    def __init__(self, name, age):
        self.name = name
        self.age = age

    def printDetail(self):
        print("Name : ", self.name, "  Age : ", self.age)

    #  Static method common for all
    @staticmethod
    def welcome():
        print("Welcome to our Institution")


s1 = student("Sathish", 25)
s1.printDetail()
s1.welcome()


s2 = student("Raja", 45)
s2.printDetail()
s2.welcome()
''';
