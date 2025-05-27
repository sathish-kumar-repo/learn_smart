import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/Python/Pyhton%20Core/topicName/pythonTopics.dart';

class Functions_and_Types extends StatefulWidget {
  const Functions_and_Types({Key? key}) : super(key: key);

  @override
  State<Functions_and_Types> createState() => _Functions_and_TypesState();
}

class _Functions_and_TypesState extends State<Functions_and_Types> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 30,
        topicsName: pythonTopics,
        img: 'Python.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Functions and Types'),
          const P(
              'Python allows us to divide a large program into the basic building blocks known as a function. function is a group of related statements that performs a specific task. A function is a reusable block of code which only runs when it is called. You can pass data, known as parameters, into a function. A function can return data as a result.'),
          const H3('Two Types of Function :'),
          const Li(
              'User-defined Function: We can create our own function based on our requirements.'),
          const Li(
              'Standard Library Function: These are built-in function in python that are available to use.'),
          const H3('Syntax:'),
          const P('   def function_name ( Parameter list ) :'),
          const P('        // function block'),
          const H3('Return Syntax:'),
          const P('   return expression'),
          const H2('Function Types :'),
          //
          const H3('No Return Type Without Argument Function'),
          const H4('Source Code'),
          Code(title: 'index.py', code: code1, type: 'python'),
          const H4('Output'),
          Code(title: 'terminal', code: code2, type: 'text'),
          const H3('No Return Type With Argument Function'),
          const H4('Source Code'),
          Code(title: 'index.py', code: code3, type: 'python'),
          const H4('Output'),
          Code(title: 'terminal', code: code4, type: 'text'),
          const H3('Return Type Without Argument Function'),
          const H4('Source Code'),
          Code(title: 'index.py', code: code5, type: 'python'),
          const H4('Output'),
          Code(title: 'terminal', code: code6, type: 'text'),
          const H3('Return Type With Argument Function'),
          const H4('Source Code'),
          Code(title: 'index.py', code: code7, type: 'python'),
          const H4('Output'),
          Code(title: 'terminal', code: code8, type: 'text'),
          const H3('Arbitrary Arguments Function in Python (*)'),
          const H4('Source Code'),
          Code(title: 'index.py', code: code9, type: 'python'),
          const H4('Output'),
          Code(title: 'terminal', code: code10, type: 'text'),
          const H3('Keyword Arguments Function in Python'),
          const H4('Source Code'),
          Code(title: 'index.py', code: code11, type: 'python'),
          const H4('Output'),
          Code(title: 'terminal', code: code12, type: 'text'),
          const H3('Arbitrary Keyword Arguments in Python(**)'),
          const H4('Source Code'),
          Code(title: 'index.py', code: code13, type: 'python'),
          const H4('Output'),
          Code(title: 'terminal', code: code14, type: 'text'),
          const H3('Default Parameter Function in Python'),
          const H4('Source Code'),
          Code(title: 'index.py', code: code15, type: 'python'),
          const H4('Output'),
          Code(title: 'terminal', code: code16, type: 'text'),
          const H3('Passing a List as an Argument in Function Python'),
          const H4('Source Code'),
          Code(title: 'index.py', code: code17, type: 'python'),
          const H4('Output'),
          Code(title: 'terminal', code: code18, type: 'text'),
          const H3('Recursive function'),
          const H4('Source Code'),
          Code(title: 'index.py', code: code19, type: 'python'),
          const H4('Output'),
          Code(title: 'terminal', code: code20, type: 'text'),
          const H3('Lambda Function'),
          const H4('Source Code'),
          Code(title: 'index.py', code: code21, type: 'python'),
          const H4('Output'),
          Code(title: 'terminal', code: code22, type: 'text'),
        ],
      ),
    );
  }
}

var code22 = '''
55
250
''';
var code21 = '''
c = lambda a: a + 50
print(c(5))

c = lambda a, b: a * b
print(c(10, 25))
''';
var code20 = '''
Factorial :  120
''';
var code19 = '''
def factorial(x):
    if x == 1:
        return 1
    else:
        return (x * factorial(x - 1))
 
 
print("Factorial : ", factorial(5))
''';
var code18 = '''
[55, 75, 80, 95, 47]
Total :  352
''';
var code17 = '''
def total(marks):
    print(marks)
    return sum(marks)
 
 
print("Total : ",total([55, 75, 80, 95, 47]))

''';
var code16 = '''
Ram  is from  Namakkal
Sam  is from  Salem
''';
var code15 = '''
def user(name, city="Salem"):
    print(name, " is from ", city)


user("Ram", "Namakkal")
user("Sam")
''';
var code14 = '''
{'name': 'Ram Kumar', 'age': 25, 'gender': 'Male'}
''';
var code13 = '''
def bioData(**data):
    print(data)


bioData(name="Ram Kumar", age=25, gender="Male")

''';
var code12 = '''
Ram  age is  25
''';
var code11 = '''
def message(name, age):
    print(name, " age is ", age)


message(age=25, name="Ram")
''';
var code10 = '''
('Ram', 'Sam', 'Raja', 'Sara')
Ram
Sam
Raja
Sara
''';
var code9 = '''
def class_10(*students):
    print(students)
    for user in students:
        print(user)


class_10("Ram", "Sam", "Raja", "Sara")
''';
var code8 = '''
Division  12.5
''';
var code7 = '''
def div(a, b):
    c = a / b
    return c
 
 
x = div(25, 2)
print("Division ", x)
''';
var code6 = '''
Enter The Value of A : 23
Enter The Value of B : 25
Mul  575
''';
var code5 = '''
def mul():
    a = int(input("Enter The Value of A : "))
    b = int(input("Enter The Value of B : "))
    c = a * b
    return c
 
 
x=mul()
print("Mul ",x)
''';
var code4 = '''
Difference :  23
''';
var code3 = '''
def sub(a, b):
    c = a - b
    print("Difference : ", c)
 
 
sub(25, 2)
''';
var code2 = '''
Enter The Value of A : 34
Enter The Value of B : 78
Total  112
''';
var code1 = '''
def add():
    a=int(input("Enter The Value of A : "))
    b=int(input("Enter The Value of B : "))
    c=a+b
    print("Total ",c)
 
add()
''';
