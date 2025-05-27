import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/Python/Pyhton%20Core/topicName/pythonTopics.dart';

class Variables extends StatefulWidget {
  const Variables({Key? key}) : super(key: key);

  @override
  State<Variables> createState() => _VariablesState();
}

class _VariablesState extends State<Variables> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 3,
        topicsName: pythonTopics,
        img: 'Python.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Variables'),
          const P(
              'In programming, a "variable" is a container in which a data value can be stored within the computer’s memory. The stored value can then be referenced using the variable’s name. Data to be stored in a variable is assigned in a Python program declaration statement with the = assignment operator.'),
          const H3('Source Code'),
          Code(title: 'index.py', code: code, type: 'python'),
          const Link(
              'https://www.tutorjoes.in/python_programming_tutorial/variables_in_python'),
        ],
      ),
    );
  }
}

var code = '''
name= "Ram"
User_name= "Ram"
name2= "Ram"

# --------------------

# In Python memory allocation is based upon value or variable
a=25 # Same Memory allocation
b=25 # Same Memory allocation
c=a+b
print("Total : ", c)
''';
