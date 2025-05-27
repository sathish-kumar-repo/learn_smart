import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/Python/Pyhton%20Core/topicName/pythonTopics.dart';

class Input_Function extends StatefulWidget {
  const Input_Function({Key? key}) : super(key: key);

  @override
  State<Input_Function> createState() => _Input_FunctionState();
}

class _Input_FunctionState extends State<Input_Function> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 4,
        topicsName: pythonTopics,
        img: 'Python.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Input Function'),
          const Note('Input always consider String whenever give number'),
          const P(
              'The input() function takes the user\'s input in the next single line, so whatever user writes in a signle line would be assign to to a variable. The input ( ) function helps to enter data at run time by the user and returns it as a string. This function prompts the user for an input from the keyboard.'),
          const P(
              'Once the user has give the input and pressed enter One of the most important things to note here is that we\'re storing whatever the user entered into a variable. The output function print ( ) is used to display the result of the program on the screen after execution.'),
          const P(
              'Use the int ( ) Function to Check if the Input Is an Integer in Python. The int ( ) function can convert a given string integer value to an integer type. Use the float ( ) Function to Check if the Input Is an decimal number in Python. The float ( ) function can convert a given string decimal number value to an float type.'),
          const H2('Getting input in Python'),
          const H3('Source Code'),
          Code(title: 'index.py', code: code1, type: 'python'),
          const H4('Output'),
          Code(title: 'terminal', code: code2, type: 'text'),
          const H2('Multiple Values in Single Line'),
          const P(
              'The given program takes input from the user in the form of three names separated by either space or comma, stored in the variables name1, name2, name3. In the first input, the input() function is used to take the input, and the split() function is used to separate the names by space and store them in the respective variables. The values of the variables are then printed.'),
          const P(
              'In the second input, the input() function is used to take the input, and the split() function is used to separate the names by a comma and store them in the respective variables. The values of the variables are then printed.'),
          const H3('Source Code'),
          Code(title: 'index.py', code: code3, type: 'python'),
          const H4('Output'),
          Code(title: 'terminal', code: code4, type: 'text'),
          const H2('Multiple Line String Input in Python'),
          const H3('Source Code'),
          Code(title: 'index.py', code: code5, type: 'python'),
          const H4('Output'),
          Code(title: 'terminal', code: code6, type: 'text'),
          const Link(
              'https://www.tutorjoes.in/python_programming_tutorial/getting_user_input_in_python'),
        ],
      ),
    );
  }
}

var code6 = '''
<class 'str'>

Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,

Enter a Para :
Ram is Good
HE is in Salem

['Ram is Good', 'HE is in Salem']
Ram is Good
HE is in Salem
''';
var code5 = '''
a="""
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
"""
print(type(a))
print(a)


para=[]
print("Enter a Para : ")

while True:
  line=input()
  if line:
    para.append(line)
  else:
    break
print(para)
output='\\n'.join(para)

print(output)
''';
var code4 = '''
Enter 3 Names : Ram kumar siva
Name 1 :  Ram
Name 2 :  kumar
Name 3 :  siva
Enter 3 Names : Ram kumar,Sam kumar,siva kumar
Name 1 :  Ram kumar
Name 2 :  Sam kumar
Name 3 :  siva kumar
''';
var code3 = '''
name1,name2,name3=input("Enter 3 Names : ").split()
print("Name 1 : ",name1)
print("Name 2 : ",name2)
print("Name 3 : ",name3)

name1,name2,name3=input("Enter 3 Names : ").split(',')
print("Name 1 : ",name1)
print("Name 2 : ",name2)
print("Name 3 : ",name3)
''';
var code2 = '''
Enter Name : Tuttor
<class 'str'>
Tuttor
Enter The Value of A : 23
Enter The Value of B : 12
35
<class 'int'>
Enter The Value of A : 34.45
Enter The Value of B : 23.76
58.21000000000001
<class 'float'>
''';
var code1 = '''
#Getting String input Statement
name=input("Enter Name : ")
print(type(name))
print(name)

#Getting Integer input Statement
a=int(input("Enter The Value of A : "))
b=int(input("Enter The Value of B : "))
c=a+b
print(c)
print(type(a))

#Getting Float input Statement
a=float(input("Enter The Value of A : "))
b=float(input("Enter The Value of B : "))
c=a+b
print(c)
print(type(a))
''';
