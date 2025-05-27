import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/Python/Pyhton%20Core/topicName/pythonTopics.dart';

class DictionaryPython extends StatefulWidget {
  const DictionaryPython({Key? key}) : super(key: key);

  @override
  State<DictionaryPython> createState() => _DictionaryPythonState();
}

class _DictionaryPythonState extends State<DictionaryPython> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 29,
        topicsName: pythonTopics,
        img: 'Python.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Dictionary'),
          const P(
              'A Python dictionary is a collection of key-value pairs where each key is associated with a value. dictionary are used to store multiple items in a single variable. To separate two items, you use a comma ( , ) . A dictionary is like a list except that it uses parentheses { key : value } .'),
          const Li('They are Immutable'),
          const Li('A set doesn\'t allow duplicate elements'),
          const Li('The key cannot be changed'),
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
{'name': 'Ram', 'age': 25, 'isMarried': True}
<class 'dict'>
Ram
25
dict_keys(['name', 'age', 'isMarried'])
dict_values(['Ram', 25, True])
dict_items([('name', 'Ram'), ('age', 25), ('isMarried', True)])
name   Ram
age   25
isMarried   True
Ram
25
True
name
age
isMarried
name Ram
age 25
isMarried True
Not Present
{'name': 'Ram', 'age': 25, 'isMarried': True, 'gender': 'male'}
{'name': 'Ram', 'age': 35, 'isMarried': True, 'gender': 'male'}
{'name': 'Ram', 'isMarried': True, 'gender': 'male'}
{}
{'user1': {'name': 'Ram', 'age': 25, 'isMarried': True}, 'user2': {'name': 'SAm', 'age': 35, 'isMarried': False}}
user1
user2
''';
var code1 = '''
# Keys are unique
# To declare the Dictionarr=y
user = {
    "name": "Ram",
    "age": 25,
    "isMarried": True,
}
print(user)

# To check the Type
print(type(user))

# To access the value using key
print(user["name"])

# To access the value using key
print(user.get("age"))

# To get all keys in Dictionary
print(user.keys())

# To values all keys in Dictionary
print(user.values())

# To items(Keys and Values) all keys in Dictionary
print(user.items())

# To access dictionary using for loop

# To keys are access the in for loop
for x in user:
    print(x, " ", user[x])

# To access the values using for loop
for x in user.values():
    print(x)

# To access the keys using for loop
for x in user.keys():
    print(x)

# To access the values and keys using for loop
for x, y in user.items():
    print(x, y)  # (key,value)

# To check the particular index in Dictionary
if "gender" in user:
    print("Present")
else:
    print("Not Present")


# Changing Values in Dictionary
user.update({"gender": "male"})
print(user)

# Update value in particular keys
user["age"] = 35
print(user)

# To remove the particular index using pop
user.pop("age")
print(user)

# To clear all the datas in Dictionary
user.clear()
print(user)

# To delete the Dictionary
del user

# Nested Dictionary
users = {
    "user1": {
        "name": "Ram",
        "age": 25,
        "isMarried": True,
    },
    "user2": {
        "name": "SAm",
        "age": 35,
        "isMarried": False,
    },
}
print(users)

# To access the Dictionary
for user in users:
    # print(user["name"])
    print(user)
''';
