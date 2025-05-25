import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/python/python_ln/topicName/pythonTopics.dart';

class Property_Decorator_Getter_Setter extends StatefulWidget {
  const Property_Decorator_Getter_Setter({Key? key}) : super(key: key);

  @override
  State<Property_Decorator_Getter_Setter> createState() =>
      _Property_Decorator_Getter_SetterState();
}

class _Property_Decorator_Getter_SetterState
    extends State<Property_Decorator_Getter_Setter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 39,
        topicsName: pythonTopics,
        img: 'Python.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Property Decorator Getter Setter'),
          const P(
              'In Python, property decorators are used to define getter, setter, and deleter methods for class properties. They allow for the encapsulation of data, by controlling access to the underlying data. Property decorators are applied to methods and define how a property value can be retrieved, set, or deleted.'),
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
Total   :  450
Average :  90.0
setter 550
Invalid Total and can't Change
Total   :  450
Average :  90.0
''';
var code1 = '''
# Property Decorators Getter Setter
class Student:
    def __init__(self, total):
        self.__total = total

    def average(self):
        return self.__total / 5.0

    @property
    def total(self):
        return self.__total

    @total.setter
    def total(self, t):
        print("setter", t)
        if t < 0 or t > 500:
            print("Invalid Total and can't Change")
        else:
            self.__total = t


s = Student(450)
print("Total   : ", s.total)
print("Average : ", s.average())
s.total = 550
print("Total   : ", s.total)
print("Average : ", s.average())
''';
