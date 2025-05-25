import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/python/python_ln/topicName/pythonTopics.dart';

class Nested_If_Statement extends StatefulWidget {
  const Nested_If_Statement({Key? key}) : super(key: key);

  @override
  State<Nested_If_Statement> createState() => _Nested_If_StatementState();
}

class _Nested_If_StatementState extends State<Nested_If_Statement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 18,
        topicsName: pythonTopics,
        img: 'Python.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Nested If Statement'),
          const P(
              'Nested If Statement means to place one If inside another If Statement. Nested ifs are very common in programming. when you nest ifs, the main thing to remember is that an else statement always refers to the nearest if statement that is within the same block as the else and that is not already associated with an else.'),
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
Enter Mark-1  : 90
Enter Mark-2  : 90
Enter Mark-3  : 90
Total  :  270
Average  :  90.0
Result  : Pass
Grade : A
''';
var code1 = '''
# Nested If Statement in Python
"""
3 Marks as Input
Total
Average
Result
If Pass Grade
    90-100 A
    80-89 B
    70-79 C
    Else D
"""

m1 = int(input("Enter Mark-1  : "))
m2 = int(input("Enter Mark-2  : "))
m3 = int(input("Enter Mark-3  : "))
total = m1 + m2 + m3
average = total / 3.0
print("Total  : ", total)
print("Average  : ", average)
if m1 >= 35 and m2 >= 35 and m3 >= 35:
    print("Result  : Pass")
    if average >= 90 and average <= 100:
        print("Grade : A")
    elif average >= 80 and average <= 89:
        print("Grade : B")
    elif average >= 70 and average <= 79:
        print("Grade : C")
    else:
        print("Grade : D")
else:
    print("Result  : Fail")
    print("Grade   : No Grade")
''';
