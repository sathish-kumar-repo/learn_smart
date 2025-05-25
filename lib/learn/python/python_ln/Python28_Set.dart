import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/python/python_ln/topicName/pythonTopics.dart';

class SetPython extends StatefulWidget {
  const SetPython({Key? key}) : super(key: key);

  @override
  State<SetPython> createState() => _SetPythonState();
}

class _SetPythonState extends State<SetPython> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 28,
        topicsName: pythonTopics,
        img: 'Python.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Set'),
          const P(
              'Set are used to store multiple items in a single variable. To separate two items, you use a comma ( , ) . A set is like a list except that it uses parentheses { } . Set is one of 4 built-in data types in Python used to store collections of data, the other 3 are List, Tuple, and Dictionary, all with different qualities and usage.'),
          const Li('Set are unordered'),
          const Li('A set doesn\'t allow duplicate elements'),
          const Li('Set cannot be changed'),
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
{'Ravi', 'Ram', 'Sam'}
<class 'set'>
Ravi
Ram
Sam
{'Sara', 'Ravi', 'Ram', 'Sam'}
{'Ram', 'Sara', 'Kumar', 'Suresh', 'Sundar', 'Ravi', 'Sam'}
{'Ram', 'Kumar', 'Suresh', 'Sundar', 'Ravi', 'Sam'}
{'Ram', 'Kumar', 'Sundar', 'Ravi', 'Sam'}
{'Kumar', 'Sundar', 'Ravi', 'Sam'}
set()
{'Ram', 'Kumar', 'Suresh', 'Sundar', 'Ravi', 'Sam'}
{1, 2, 3, 4, 'c', 'd', 'b', 'a'}
{1, 2, 3, 4, 'c', 'd', 'b', 'a'}
{5}
{5}
{6, 7, 8, 9}
{6, 7, 8, 9}
False
True
True
''';
var code1 = '''
names = {"Ram", "Sam", "Ravi"}
print(names)
print(type(names))

# Access Values Using For loop
for name in names:
    print(name)

# Adding New Element
names.add("Sara")
print(names)

# Update Another Set of Data
a = {"Kumar", "Sundar", "Suresh"}
names.update(a)
print(names)

# To remove the element
names.remove("Sara")
print(names)

# This function like as remove but remove function show exception if the removed element does not exist but discard function not show error if the element does not exist
names.discard("Suresh")
print(names)

# To remove last index last of element but set is unorder and unindexed so , pop function remove random element in set
names.pop()
print(names)

# To clear all the elements in Sets
names.clear()
print(names)

# To delete the set
del names
# print(names)

names = {"Ram", "Ram", "Sam", "Ravi", "Kumar", "Sundar", "Suresh"}
print(names)

# Union is set
a = {1, 2, 3, 4}
b = {"a", "b", "c", "d"}
c = a.union(b)
print(c)

# Union and Update the existing Set
a.update(b)
print(a)

# Intersection is set
a = {1, 2, 3, 4, 5}
b = {5, 6, 7, 8, 9}
c = a.intersection(b)
print(c)

# Intersection and Update the existing Set
a.intersection_update(b)
print(a)

# Symmetric difference is set
c = a.symmetric_difference(b)
print(c)

# Symmetric difference and Update the existing Set
a.symmetric_difference_update(b)
print(a)

# Boolean Functions
a = {5, 6, 7}
b = {5, 6, 7}

c = a.isdisjoint(b)
print(c)

c = a.issubset(b)
print(c)

c = a.issuperset(b)
print(c)
''';
