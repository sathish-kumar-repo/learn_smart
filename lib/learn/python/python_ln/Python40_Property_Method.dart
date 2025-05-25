import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/python/python_ln/topicName/pythonTopics.dart';

class Property_Method extends StatefulWidget {
  const Property_Method({Key? key}) : super(key: key);

  @override
  State<Property_Method> createState() => _Property_MethodState();
}

class _Property_MethodState extends State<Property_Method> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 40,
        topicsName: pythonTopics,
        img: 'Python.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Property Method'),
          const P(
              'Property method to define getter and setter like Property Decorator Getter Setter'),
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
# Property Method
class Student:
    def __init__(self, total):
        self.__total = total

    def average(self):
        return self.__total / 5.0

    def getter(self):
        return self.__total

    def setter(self, t):
        print("setter", t)
        if t < 0 or t > 500:
            print("Invalid Total and can't Change")
        else:
            self.__total = t

    total = property(getter, setter)


s = Student(450)
print("Total   : ", s.total)
print("Average : ", s.average())
s.total = 550
print("Total   : ", s.total)
print("Average : ", s.average())
''';
