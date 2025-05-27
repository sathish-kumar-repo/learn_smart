import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/Python/Pyhton%20Core/topicName/pythonTopics.dart';

class ListPython extends StatefulWidget {
  const ListPython({Key? key}) : super(key: key);

  @override
  State<ListPython> createState() => _ListPythonState();
}

class _ListPythonState extends State<ListPython> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 26,
        topicsName: pythonTopics,
        img: 'Python.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('List'),
          const P(
              'Lists are used to store multiple items in a single variable.To separate two items, you use a comma ( , ) . List uses the square brackets [ ]. Lists are one of 4 built-in data types in Python used to store collections of data, the other 3 are Tuple, Set, and Dictionary, all with different qualities and usage.'),
          const Li('Sequence Type'),
          const Li('Element of the list can access by index'),
          const Li('They are mutable'),
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
[1, 2, 3, 4, 5]
<class 'list'>
[100, 2, 3, 4, 5]
Slicing
2
5
[100, 2, 3]
[3, 4, 5]
[100, 2, 3]
-----------------------------
[1, True, 'Ram', 2.5, [1, 2, 3, 4]]
<class 'list'>
1  type is  <class 'int'>
True  type is  <class 'bool'>
Ram  type is  <class 'str'>
2.5  type is  <class 'float'>
[1, 2, 3, 4]  type is  <class 'list'>
2
-----------------------------
[10, 25, 35, 45]
[]
[10, 25, 35, 45]
3
1
7
45
4
[10, 25, 35, 45, 25, 4, 25]
[25, 35, 45, 25, 4, 25]
[10, 35, 45, 25, 4, 25]
-----------------------------
['Ram']
['Ram', 'Sam', 'Ravi', 'Kumar']
['Ram', 'Sam', 'Ravi', 'Kumar', 'Sara', 'Anitha']      
['Suriya', 'Ram', 'Sam', 'Ravi', 'Kumar', 'Sara', 'Anitha']
-----------------------------
[0, 1, 2, 3, 4]
['S', 'a', 't', 'h', 'i', 's', 'h', 'k', 'u', 'm', 'a', 'r']
[10, 50, 100, 25, 85]
[10, 25, 50, 85, 100]
[100, 85, 50, 25, 10]
['Apple', 'Orange', 'Zebra']
['Zebra', 'Orange', 'Apple']
['Apple', 'Zebra', 'Orange']
''';
var code1 = '''
# List in Python
"""
Sequence Type
Mutable
a[5]
a={1,2,3,4,5}
a[0]
"""

# Declare the List
a = [1, 2, 3, 4, 5]
print(a)

# To check the Type
print(type(a))

# To change the value in particular imdex
a[0] = 100
print(a)

# Slicing the List
print("Slicing")
print(a[1])
print(a[-1])
print(a[0:3])
print(a[2:])
print(a[:3])

print("-----------------------------")

# Array can store any value
a = [1, True, "Ram", 2.5, [1, 2, 3, 4]]
print(a)
print(type(a))

# To access the List element
print(a[0], " type is ", type(a[0]))
print(a[1], " type is ", type(a[1]))
print(a[2], " type is ", type(a[2]))
print(a[3], " type is ", type(a[3]))
print(a[4], " type is ", type(a[4]))

# To access the element in nested list
print(a[4][1])

print("-----------------------------")

a = [10, 25, 35, 45]
print(a)
a.clear()
print(a)

# To Take clone
a = [10, 25, 35, 45]
b = a.copy()
print(b)

a = [10, 25, 35, 45, 25, 4, 25]

# Return how many element are in List
print(a.count(25))

# Return index based upon value and only find first occurence
print(a.index(25))

# Return Length of List
print(len(a))

# To return max and min element in List
print(max(a))
print(min(a))
print(a)

# remove Element using index
a.pop(0)
print(a)

# remove Element using Values and remove first occurence
a = [10, 25, 35, 45, 25, 4, 25]
a.remove(25)
print(a)

print("-----------------------------")

names = ["Ram"]
print(names)
# To add element at end of List
names.append("Sam")
names.append("Ravi")
names.append("Kumar")
print(names)

# To add multiple element in List
name2 = ["Sara", "Anitha"]
names.extend(name2)

# To add element at particular index
print(names)
names.insert(0, "Suriya")
print(names)

print("-----------------------------")

# List of number from 0  to 4
print(list(range(5)))

# List of Character
print(list("Sathishkumar"))


a = [10, 50, 100, 25, 85]
print(a)

# Sort the List => default is asscending order
a.sort()
print(a)

# Sort the List in descending order
a.sort(reverse=True)
print(a)

#  Similarly for String
a = ["Orange", "Apple", "Zebra"]
a.sort()
print(a)
a.sort(reverse=True)
print(a)

# To sort the Array based upon size
a = ["Orange", "Apple", "Zebra"]
a.sort(key=len)
print(a)
''';
