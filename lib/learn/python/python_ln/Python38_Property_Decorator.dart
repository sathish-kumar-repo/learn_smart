import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/python/python_ln/topicName/pythonTopics.dart';

class Property_Decorator extends StatefulWidget {
  const Property_Decorator({Key? key}) : super(key: key);

  @override
  State<Property_Decorator> createState() => _Property_DecoratorState();
}

class _Property_DecoratorState extends State<Property_Decorator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 38,
        topicsName: pythonTopics,
        img: 'Python.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Property Decorator'),
          const P(
              'Python @property is one of the built-in decorators. The main purpose of any decorator is to change your class methods or attributes. A decorator feature in Python wraps in a function, appends several functionalities to existing code and then returns it. Methods and functions are known to be callable as they can be called. Therefore, a decorator is also a callable that returns callable. @property decorator in Python which is helpful in defining the properties effortlessly without manually calling the inbuilt function property().'),
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
Sathish Kumar is 25 years old
Sathish Kumar is 45 years old
''';
var code1 = '''
# Property Decorator


class user:
    def __init__(self, name, age):
        self.name = name
        self.age = age
        # self.msg = self.name + " is " + str(self.age) + " years old"

    # method or functions change to property
    @property
    def msg(self):
        return self.name + " is " + str(self.age) + " years old"


o = user("Sathish Kumar", 25)
print(o.name)
print(o.age)
print(o.msg)
o.age = 45
print(o.msg)
''';
