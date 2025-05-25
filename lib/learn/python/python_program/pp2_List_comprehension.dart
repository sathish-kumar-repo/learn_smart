import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/python/python_program/topicName/pythonProgramTopic.dart';

class PyListComprehension extends StatefulWidget {
  const PyListComprehension({Key? key}) : super(key: key);

  @override
  State<PyListComprehension> createState() => _PyListComprehensionState();
}

class _PyListComprehensionState extends State<PyListComprehension> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 2,
        topicsName: pythonProgramTopics,
        img: 'Python.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('List Comprehension'),
          const H3('1. Create a List of Squares of numbers from 1 to 10'),
          Code(title: 'main.py', code: code1, type: 'python'),
          const H3('2. Create a list of Even numbers from 1 to 20'),
          Code(title: 'main.py', code: code2, type: 'python'),
          const H3('3. Generate a List of characters from a string'),
          Code(title: 'main.py', code: code3, type: 'python'),
          const H3('4. Create a list of lengths of words in a sentence'),
          Code(title: 'main.py', code: code4, type: 'python'),
          const H3(
              '5. Generate a list of tuples containing a number and its square'),
          Code(title: 'main.py', code: code5, type: 'python'),
          const H3('6. Create a list of lowercase letters'),
          Code(title: 'main.py', code: code6, type: 'python'),
          const H3('7. Generate a list of uppercase letters'),
          Code(title: 'main.py', code: code7, type: 'python'),
          const H3(
              '8. Create a list of even numbers squared and odd numbers cubed from 1 to 10'),
          Code(title: 'main.py', code: code8, type: 'python'),
          const H3(
              '9. Generate a list of common multiples of 3 and 5 up to 100'),
          Code(title: 'main.py', code: code9, type: 'python'),
          const H3('10. Create a list of reversed strings from another list'),
          Code(title: 'main.py', code: code10, type: 'python'),
          const H3('11. Generate a list of prime numbers from 1 to 50'),
          Code(title: 'main.py', code: code11, type: 'python'),
          const H3(
              '12. Create a list of squares of even numbers and cubes of odd numbers from -5 to 5'),
          Code(title: 'main.py', code: code12, type: 'python'),
          const H3(
              '13. Generate a list of strings with their lengths from another list'),
          Code(title: 'main.py', code: code13, type: 'python'),
          const H3(
              '14. Create a list of first characters from a list of words'),
          Code(title: 'main.py', code: code14, type: 'python'),
          const H3(
              '15. Generate a list of numbers with their squares if the number is even'),
          Code(title: 'main.py', code: code15, type: 'python'),
          const H3('16. Create a list of uppercase words from a sentence'),
          Code(title: 'main.py', code: code16, type: 'python'),
          // const H3(  ''),
          // Code(title: 'main.py', code: code16, type: 'python'),
        ],
      ),
    );
  }
}

var code = '''''';
var code16 = '''
sentence = "This is a sample sentence."
uppercase_words = [word.upper() for word in sentence.split()]
print(sentence)
print(uppercase_words)
"""
This is a sample sentence.
['THIS', 'IS', 'A', 'SAMPLE', 'SENTENCE.']
"""
''';
var code15 = '''
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
squared_evens = [x**2 for x in numbers if x % 2 == 0]
print(numbers)
print(squared_evens)
"""
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
[4, 16, 36, 64, 100]
"""
''';
var code14 = '''
words = ["apple", "banana", "cherry"]
first_chars = [word[0] for word in words]
print(words)
print(first_chars)
"""
['apple', 'banana', 'cherry']
['a', 'b', 'c']
"""
''';
var code13 = '''
words = ["apple", "banana", "cherry"]
word_lengths = [(word, len(word)) for word in words]
print(words)
print(word_lengths)
"""
['apple', 'banana', 'cherry']
[('apple', 5), ('banana', 6), ('cherry', 6)]
"""
''';
var code12 = '''
result = [x**2 if x % 2 == 0 else x**3 for x in range(-5, 6)]
print(result)
# [-125, 16, -27, 4, -1, 0, 1, 4, 27, 16, 125]
''';
var code11 = '''
def is_prime(n):
    if n <= 1:
        return False
    for i in range(2, int(n**0.5) + 1):
        if n % i == 0:
            return False
    return True


prime_numbers = [x for x in range(1, 51) if is_prime(x)]
print(prime_numbers)
# [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47]
''';
var code10 = '''
words = ["apple", "banana", "cherry"]
reversed_words = [word[::-1] for word in words]
print(words)
print(reversed_words)
"""
['apple', 'banana', 'cherry']
['elppa', 'ananab', 'yrrehc']
"""
''';
var code9 = '''
common_multiples = [x for x in range(1, 101) if x % 3 == 0 and x % 5 == 0]
print(common_multiples)
# [15, 30, 45, 60, 75, 90]
''';
var code8 = '''
result = [x**2 if x % 2 == 0 else x**3 for x in range(1, 11)]
print(result)
# [1, 4, 27, 16, 125, 36, 343, 64, 729, 100]
''';
var code7 = '''
uppercase_letters = [chr(x) for x in range(ord("A"), ord("Z") + 1)]
print(uppercase_letters)
"""
['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z']
"""
''';
var code6 = '''
lowercase_letter = [chr(x) for x in range(ord("a"), ord("z") + 1)]
print(lowercase_letter)
"""
['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']
"""
''';
var code5 = '''
num_squares = [(x, x**2) for x in range(1, 6)]
print(num_squares) 
# [(1, 1), (2, 4), (3, 9), (4, 16), (5, 25)]
''';
var code4 = '''
sentence = "This is a Sample sentence"
word_length = [len(word) for word in sentence.split()]
print(sentence)
"""
This is a Sample sentence
[4, 2, 1, 6, 8]
"""
''';
var code3 = '''
string = "Hello, world!"
chars = [char for char in string if char.isalpha()]
print(chars)
# ['H', 'e', 'l', 'l', 'o', 'w', 'o', 'r', 'l', 'd']
''';
var code2 = '''
evens = [x for x in range(1, 21) if x % 2 == 0]
print(evens)
# [2, 4, 6, 8, 10, 12, 14, 16, 18, 20]
''';
var code1 = '''
squares = [x**2 for x in range(1, 11)]
print(squares)
# [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]
''';
