import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/Python/Pyhton%20Core/topicName/pythonTopics.dart';

class Function_Overriding extends StatefulWidget {
  const Function_Overriding({Key? key}) : super(key: key);

  @override
  State<Function_Overriding> createState() => _Function_OverridingState();
}

class _Function_OverridingState extends State<Function_Overriding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 47,
        topicsName: pythonTopics,
        img: 'Python.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Function Overriding'),
          const P(
              'Function overriding in Python is the ability of a subclass to provide a different implementation of a method that is already defined in its superclass. In other words, it is the process of redefining a method in a derived class that already exists in the base class. This is useful when a subclass wants to change the behavior of a method inherited from its superclass. The method in the subclass is said to override the method in the superclass and the subclass method is called instead of the superclass method when the method is called on an instance of the subclass.'),
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
Total Working Hrs :  50
Total Working Hrs :  60
Total Working Hrs :  50
''';
var code1 = '''
# Function Overriding
class Employee:
    def WorkingHrs(self):
        self.hrs = 50
 
    def printHrs(self):
        print("Total Working Hrs : ", self.hrs)
 
 
class Trainee(Employee):
    def WorkingHrs(self):
        self.hrs = 60
 
    def resetHrs(self):
        super().WorkingHrs()
 
 
employee = Employee()
employee.WorkingHrs()
employee.printHrs()
 
trainee=Trainee()
trainee.WorkingHrs()
trainee.printHrs()
# Reset Trainee Hrs
trainee.resetHrs()
trainee.printHrs()
''';
