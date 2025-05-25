import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/python/python_ln/topicName/pythonTopics.dart';

class Init_Method extends StatefulWidget {
  const Init_Method({Key? key}) : super(key: key);

  @override
  State<Init_Method> createState() => _Init_MethodState();
}

class _Init_MethodState extends State<Init_Method> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 37,
        topicsName: pythonTopics,
        img: 'Python.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Init Method'),
          const P(
              'The __init__ method, also known as the constructor method, is a special method in Python classes that gets called automatically when a new instance of the class is created. The __init__ method is used to initialize the attributes of the class and set them to the default values.'),
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
Call When new Instance Created
Name :  Sathish Kumar
{'name': 'Sathish Kumar'}
Call When new Instance Created
Name :  Sam
{'name': 'Sam'}
{'__module__': '__main__', '__init__': <function user.__init__ at 0x000001BDAD1B8D60>, 'printall': <function user.printall at 0x000001BDAD1B9BC0>, '__dict__': <attribute '__dict__' of 'user' objects>, '__weakref__': <attribute '__weakref__' of 'user' objects>, '__doc__': None}
''';
var code1 = '''
# init method in Python


class user:
    def __init__(self, name):
        print("Call When new Instance Created")
        # Instance Attribute
        self.name = name

    def printall(self):
        print("Name : ", self.name)


o1 = user("Sathish Kumar")
o1.printall()
print(o1.__dict__)

o2 = user("Sam")
o2.printall()
print(o2.__dict__)

print(user.__dict__)
''';
