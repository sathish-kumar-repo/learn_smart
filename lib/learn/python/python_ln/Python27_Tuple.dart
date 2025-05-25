import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/python/python_ln/topicName/pythonTopics.dart';

class TuplePython extends StatefulWidget {
  const TuplePython({Key? key}) : super(key: key);

  @override
  State<TuplePython> createState() => _TuplePythonState();
}

class _TuplePythonState extends State<TuplePython> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 27,
        topicsName: pythonTopics,
        img: 'Python.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Tuple'),
          const P(
              'Tuple are used to store multiple items in a single variable.To separate two items, you use a comma ( , ) . A tuple is like a list except that it uses parentheses ( ) . Once you define a tuple, you can access an individual element by its index. A tuple is a collection of objects which ordered and immutable, you cannot change its elements. Tuples are sequences, just like lists.'),
          const Li('Immutable'),
          const Li('Surrounded by Round Brackets (1,1,5)'),
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
(1, 2.5, True, 'Ram')
<class 'tuple'>
2.5
Ram
(1, 2.5)
[1, 2.5, True, 'Ram']
[1, 2.5, True, 'Ram', 'Raja']
<class 'list'>
(1, 2.5, True, 'Ram', 'Raja')
<class 'tuple'>
1
2.5
True
Ram
Raja
Not Found
5
<class 'tuple'>
<class 'int'>
(1, 2, 7, 4, 5, 6, 7, 8)
2
((1, 2, 7, 4), (5, 6, 7, 8))
(1, 2, 7, 4)
(5, 6, 7, 8)
2
('Sathish', 'Sathish', 'Sathish', 'Sathish', 'Sathish', 'Sathish', 'Sathish', 'Sathish', 'Sathish', 'Sathish')
1
7
''';
var code1 = '''
# Tuple in Python
# Immutable
# Surrounded by Round Brackets (1,1,5)

# To Store any type of value
a = (1, 2.5, True, "Ram")
print(a)

# To check the type
print(type(a))

# Slice the Tuple
print(a[1])
print(a[-1])
print(a[0:2])

# To convert tuple into list
b = list(a)
print(b)
b.append("Raja")
print(b)
print(type(b))
# To convert list into tuple
a = tuple(b)
print(a)
print(type(a))

# to print value in tuple using for loop
for i in a:
    print(i)

if "Raj" in a:
    print("Raja is Found")
else:
    print("Not Found")

# Find the length of tuple
print(len(a))

# to define single element in tuple
a = (1,) # It is Tuple
print(type(a))
tup = (1) # It is Integer
print(type(tup)) 

# To delete the tuple
del a
# print(a)

# To concatenate the Tuple
a = (1, 2, 7, 4)
b = (5, 6, 7, 8)
c = a + b
print(c)

# To count the occurence
print(c.count(7))

# To create Nested Tuple
a = (1, 2, 7, 4)
b = (5, 6, 7, 8)
c = (a, b)
print(c)

# To access the value in tuple
print(c[0])
print(c[1])
print(c[0][1])

# Repetition the Tuple
x = ("Sathish",) * 10
print(x)

# To find max and min
a = (1, 2, 7, 4)
b = (5, 6, 7, 8)
print(min(a))
print(max(a))
''';
