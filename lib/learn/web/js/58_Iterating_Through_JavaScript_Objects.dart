import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/js/topicName/jsTopics.dart';

class Iterating_Through_JavaScript_Objects extends StatefulWidget {
  const Iterating_Through_JavaScript_Objects({Key? key}) : super(key: key);

  @override
  State<Iterating_Through_JavaScript_Objects> createState() =>
      _Iterating_Through_JavaScript_ObjectsState();
}

class _Iterating_Through_JavaScript_ObjectsState
    extends State<Iterating_Through_JavaScript_Objects> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 58,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Iterating Through JavaScript Objects'),
          const P(
              'In JavaScript, objects can be iterated through using several methods, including the for-in loop, Object.keys(), Object.values(),and Object.entries().'),
          const H3('Example 1: Using the for-in loop'),
          Code(title: 'script.js', code: code1, type: 'javascript'),
          const H3('Example 2: Using Object.keys()'),
          Code(title: 'script.js', code: code2, type: 'javascript'),
          const H3('Example 3: Using Object.values()'),
          Code(title: 'script.js', code: code3, type: 'javascript'),
          const H3('Example 4: Using Object.entries()'),
          Code(title: 'script.js', code: code4, type: 'javascript'),
          const H3('In Normal for Loop using entries'),
          Code(title: 'script.js', code: code5, type: 'javascript'),
          const H3('In Normal for Loop using keys'),
          Code(title: 'script.js', code: code6, type: 'javascript'),
        ],
      ),
    );
  }
}

var code6 = '''
const person = {
  name: "Tiya",
  age: 30,
  job: "Programmer",
};

const keyss = Object.keys(person);
for (let i = 0; i < keyss.length; i++) {
  console.log(keyss[i] + ": " + person[keyss[i]]);
}
''';
var code5 = '''
const person = {
  name: "Tiya",
  age: 30,
  job: "Programmer",
};

const entriess = Object.entries(person);
for (let i = 0; i < entriess.length; i++) {
  console.log(entriess[i][0] + ": " + entriess[i][1]);
}
''';
var code4 = '''
const user = {
  name: "Tiya",
  age: 30,
  job: "Programmer",
};

const entries = Object.entries(user);
console.log(entries); //give two dimensional array format
entries.forEach((entry) => {
  console.log(`\${entry[0]}: \${entry[1]}`);
});
''';
var code3 = '''
const user3 = {
  name: "Tiya",
  age: 30,
  job: "Programmer",
};

const values = Object.values(user3);
values.forEach((value) => {
  console.log(value);
});
''';
var code2 = '''
const user2 = {
  name: "Tiya",
  age: 30,
  job: "Programmer",
};

const keys = Object.keys(user2);
keys.forEach((key) => {
  console.log(`\${key}: \${user2[key]}`);
});
''';
var code1 = '''
const user1 = {
  name: "Tiya",
  age: 30,
  job: "Programmer",
};

for (let key in user1) {
  console.log(`\${key}: \${user1[key]}`);
''';
