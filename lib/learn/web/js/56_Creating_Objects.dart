import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/js/topicName/jsTopics.dart';

class Creating_Objects extends StatefulWidget {
  const Creating_Objects({Key? key}) : super(key: key);

  @override
  State<Creating_Objects> createState() => _Creating_ObjectsState();
}

class _Creating_ObjectsState extends State<Creating_Objects> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 56,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Creating Objects'),
          const H3('1. Using object literals:'),
          const P(
              'This is the most common and simplest way to create an object. Object literals are enclosed in curly braces {} and consist of a set of key-value pairs. Here is an example:'),
          const Note(
              'variable maathri create panni athula store pannurathu this is called object literal'),
          Code(title: 'script.js', code: code1, type: 'javascript'),
          const H3('2. Using the object constructor:'),
          const P(
              'The object constructor is a built-in function in JavaScript, which is used to create an object prototype. Here is an example:'),
          const Note('it is build-in method'),
          Code(title: 'script.js', code: code2, type: 'javascript'),
          const H3('3. Using the Object.create() method:'),
          const P(
              'The Object.create() method is used to create an object with a specific prototype. example:'),
          Note(note),
          Code(title: 'script.js', code: code3, type: 'javascript'),
          const H3('4.Using class:'),
          const P(
              'The class is the latest addition to creating objects in JavaScript. example:'),
          Code(title: 'script.js', code: code4, type: 'javascript'),
        ],
      ),
    );
  }
}

var note = '''
Object.create(prototype, propertiesOject)
propertiesOject is optional parameter and give in run time
The Object.create() method is used to create an object with a specific prototype

Every objects in JS has a build-in property, which is called its protype

Simple meaning 
The process of creating methods is called prototype
''';

var code4 = '''
class Person {
  constructor(name, age, job) {
    this.name = name;
    this.age = age;
    this.job = job;
  }
}

const person4 = new Person("Tiya", 30, "Developer");
console.log(person4);
''';
var code3 = '''
const personProto = {
  sayHello: function () {
    console.log(`Hello, my name is \${this.name}`);
  },
};

const person2 = Object.create(personProto);
person2.name = "John";
person2.age = 30;
person2.job = "Developer";
console.log(person2);
person2.sayHello();
''';
var code2 = '''
const person1 = new Object(); // object is a class
person1.name = "John";
person1.age = 30;
person1.job = "Developer";
console.log(person);
''';
var code1 = '''
const person = {
  name: "John",
  age: 30,
  job: "Developer",
};
''';
