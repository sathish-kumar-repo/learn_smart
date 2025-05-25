import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/js/topicName/jsTopics.dart';

class Organizing_Data extends StatefulWidget {
  const Organizing_Data({Key? key}) : super(key: key);

  @override
  State<Organizing_Data> createState() => _Organizing_DataState();
}

class _Organizing_DataState extends State<Organizing_Data> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 59,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Organizing Data with Objects inside Arrays'),
          const P(
              'Objects inside arrays are a common pattern in JavaScript, as arrays are often used to store collections of similar data. For example, an array of user objects might look like this:'),
          Code(title: 'script.js', code: code1, type: 'javascript'),
          const P(
              'One common use case for objects inside arrays is to loop through the array and perform some action on each object. For example, we might want to display the names of all users on a website:'),
          Code(title: 'script.js', code: code2, type: 'javascript'),
          const P(
              'Another use case is to filter the array based on certain properties of the objects. For example, we might want to find all users who are older than 30:'),
          Code(title: 'script.js', code: code3, type: 'javascript'),
          const P(
              'Objects inside arrays in JavaScript can be used to store and organize related data in a structured way. They can be used to store information about multiple items, such as a list of products, users, or events.'),
          const P(
              'Advantages of using objects inside arrays in JavaScript include:'),
          const Li(
              'Organization: Storing related data in a structured way makes it easy to access, update and manage the data.'),
          const Li(
              'Reusability: You can easily reuse the same object structure for different data sets, making the code more efficient.'),
          const Li(
              'Flexibility: Using objects inside arrays allows you to store different types of data, such as strings, numbers, and even other objects.'),
          const Li(
              'Iteration: It allows for easy iteration using for loops or array methods such as map, filter, and reduce.'),
          const H3('Examples of usage include:'),
          const Li('Storing a list of products in an e-commerce application'),
          const Li('Storing a list of users in a social media application'),
          const Li('Storing a list of events in a calendar application'),
        ],
      ),
    );
  }
}

var code = '''''';
var code3 = '''
const olderUsers = users.filter((user) => user.age > 30);
console.log(olderUsers);
''';
var code2 = '''
for (const user of users) {
  console.log(user.name);
}
''';
var code1 = '''
const users = [
  { name: "joes", age: 25, email: "joes@gmail.com" },
  { name: "ram", age: 32, email: "ram@gmail.com" },
  { name: "sam", age: 45, email: "sam@gmail.com" },
];
''';
