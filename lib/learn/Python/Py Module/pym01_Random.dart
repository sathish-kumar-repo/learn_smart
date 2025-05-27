import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/Python/Py%20Module/topicName/pyModuleTopics.dart';

class RandomPy extends StatefulWidget {
  const RandomPy({Key? key}) : super(key: key);

  @override
  State<RandomPy> createState() => _RandomPyState();
}

class _RandomPyState extends State<RandomPy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 1,
        topicsName: pyModule,
        img: 'py.jpg',
      ),
      body: MyPage(
        children: [
          const H1('Random Module'),
          const H3('prints a random value from the list'),
          Code(title: 'main.py', code: code1, type: 'python'),
          const H3('Creating random numbers with Python seed()'),
          const P(
              'As stated above random module creates pseudo-random numbers. Random numbers depend on the seeding value. For example, if the seeding value is 5 then the output of the below program will always be the same. Therefore, it must not be used for encryption.'),
          Code(title: 'main.py', code: code2, type: 'python'),
          const H3('Generate Random Numbers'),
          const P(
              'random.randint() method is used to generate random integers between the given range.'),
          Code(title: 'main.py', code: code3, type: 'python'),
          const H3('Generate Random Float numbers'),
          const P(
              'A random.random() method is used to generate random floats between 0.0 to 1.'),
          Code(title: 'main.py', code: code4, type: 'python'),
          const H3('Randomly Select Elements from a List'),
          const P(
              'Random sampling from a list in Python (random.choice, and sample)'),
          const H4(
              'Example 1: Python random.choice() function is used to return a random item from a list, tuple, or string.'),
          Code(title: 'main.py', code: code5, type: 'python'),
          const H4(
              'Example 2:  Python random.sample() function is used to return a random item from a list, tuple, or string.'),
          const Li('Syntax: random.sample(sequence, length)'),
          Code(title: 'main.py', code: code6, type: 'python'),
          const H3('Shuffle List'),
          const P(
              'A random.shuffle() method is used to shuffle a sequence (list). Shuffling means changing the position of the elements of the sequence. Here, the shuffling operation is inplace.'),
          const Li('Syntax: random.shuffle(sequence, function)'),
          Code(title: 'main.py', code: code7, type: 'python'),
          // const H3(  ''),
          // Code(title: 'main.py', code: code1, type: 'python'),
        ],
      ),
    );
  }
}

var code = '''''';
var code7 = '''
# import the random module
import random

# declare a list
sample_list = [1, 2, 3, 4, 5]

print("Original list : ")
print(sample_list)

# first shuffle
random.shuffle(sample_list)
print("\\nAfter the first shuffle : ")
print(sample_list)

# second shuffle
random.shuffle(sample_list)
print("\\nAfter the second shuffle : ")
print(sample_list)
"""
Original list : 
[1, 2, 3, 4, 5]

After the first shuffle : 
[4, 3, 5, 2, 1]

After the second shuffle : 
[1, 3, 4, 5, 2]
"""
''';
var code6 = '''
# import random
from random import sample

# Syntax: random.sample(sequence, length)

# Select Random number from List
# Prints list of random items of given length
list1 = [1, 2, 3, 4, 5]

print(sample(list1,3))

# Select Random number from Tuple
# Prints list of random items of given length
list2 = (4, 5, 6, 7, 8)

print(sample(list2,3))

# Select Random number from string
# Prints list of random items of given length
list3 = "45678"

print(sample(list3,3))
''';
var code5 = '''
import random

# prints a random value from the list
list1 = [1, 2, 3, 4, 5, 6]
print(random.choice(list1))

# prints a random item from the string
string = "sathish"
print(random.choice(string))

# prints a random item from the tuple
tuple1 = (1, 2, 3, 4, 5)
print(random.choice(tuple1))
''';
var code4 = '''
# import random
import random
     
# Prints random item
print(random.random())
''';
var code3 = '''
# import random module
import random
 
# Generates a random number between
# a given positive range
r1 = random.randint(5, 15)
print("Random number between 5 and 15 is % s" % (r1))
 
# Generates a random number between
# two given negative range
r2 = random.randint(-10, -2)
print("Random number between -10 and -2 is % d" % (r2))
''';
var code2 = '''
import random
 
random.seed(5)
 
print(random.random()) # 0.6229016948897019
print(random.random()) # 0.7417869892607294
''';
var code1 = '''
# import random
import random
 
# prints a random value from the list
list1 = [1, 2, 3, 4, 5, 6]
print(random.choice(list1))
''';
