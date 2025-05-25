import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/python/python_ln/topicName/pythonTopics.dart';

class String_Manipulation extends StatefulWidget {
  const String_Manipulation({Key? key}) : super(key: key);

  @override
  State<String_Manipulation> createState() => _String_ManipulationState();
}

class _String_ManipulationState extends State<String_Manipulation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 7,
        topicsName: pythonTopics,
        img: 'Python.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('String, String Functions and String Manipulation'),
          const H3('splitlines()'),
          const Li(
              ' Python splitlines() method splits the string based on the lines. It breaks the string at line boundaries and returns a list of splitted strings. Line breakers can be a new line (\\n), carriage return (\\r) etc. A table of line breakers are given below which split the string.'),
          const H3('partition()'),
          const Li(
              'The partition() method searches for a specified string, and splits the string into a tuple containing three elements. The first element contains the part before the specified string. The second element contains the specified string. The third element contains the part after the string.'),
          const P(
              'Python has several built-in functions associated with the string data type. These functions let us easily modify and manipulate strings. Creating Strings is the simplest and easy to use in Python. To create a string in Python, we simply enclose a text in single as well as double-quotes.'),
          const Link(
              'https://www.tutorjoes.in/python_programming_tutorial/string_and_string_functions_in_python'),
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
<class 'str'>
SATHISH KUMAR
sathish kumar
Sathish kumar
Sathish Kumar
2
False
5
5
0 Kumar
Is Upper :  False
Is Lower :  True
Is Alpha Numeric :  True
Is Alpha :  False
he
is
good
['he', 'is', 'good']
['he\\n', 'is\\n', 'good']
['Sathish', 'Kumar', 'Computer', 'Education']
['Sathish', 'Kumar', 'Computer', 'Education']
16
7
12
11
('12', '-', '03-2020')
('Sathish', '|', 'kumar|is|a|programmer')
sample
sa
sampl
ample
e
pl
sampl
elpmas
''';
var code1 = '''
s = "Sathish Kumar"
print(s)

# to check type
print(type(s))

# to transform the text
print(s.upper())
print(s.lower())
print(s.capitalize())
print(s.title())

# Return the count of String
print(s.count("h"))

# Return bool based upon program 
print(s.endswith("ED"))

# Return index of String if does not exist it returns -1
print(s.find("s"))

# To search the letter after 5th index
print(s.find("s", 5))

# To replace the Character or String and it returns the String and it does affect the original String, it return String with Replace
print(s.replace("Sathish", '0'))

# Boolean Function 
a = "sathish1234"
print("Is Upper : ", a.isupper())
print("Is Lower : ", a.islower())
print("Is Alpha Numeric : ", a.isalnum())
print("Is Alpha : ", a.isalpha())

# Special Character
s = "he\\nis\\ngood"
print(s)

# Splitlines Function
print(s.splitlines()) # It returns List 
print(s.splitlines(True)) # It returns List and element with \n

# Split the String Based upon space or any other delimiter
a = "Sathish Kumar Computer Education"
print(a.split(" "))
a = "Sathish,Kumar,Computer,Education"
print(a.split(","))


s="    Sathish     "

# To return the lenght of String
print(len(s))

# To remove unwanted white space
print(len(s.strip()))

# To remove left unwanted white space
print(len(s.lstrip()))

# To remove right unwanted white space
print(len(s.rstrip()))

# Partition Function
s='12-03-2020'
print(s.partition('-'))

s1='Sathish|kumar|is|a|programmer'
print(s1.partition('|'))

# String Manipulation
\'\'\'
 S  a  m  p  l  e
 0  1  2  3  4  5
-6 -5 -4 -3 -2 -1
\'\'\'

s = "sample"
print(s)

"""String Slicing"""
# Slice first 2 character
print(s[0:2])

# Slice first 5 character
print(s[:5])

# Slice the full String after index 1
print(s[1:])

# Slice the last Character
print(s[-1])

# to last before character
print(s[-3:-1]) 

# To print all character expect last character
print(s[:-1])

# Print Reverse
print(s[::-1])
''';
