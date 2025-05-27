import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/JS/topicName/jsTopics.dart';

class Prototype extends StatefulWidget {
  const Prototype({Key? key}) : super(key: key);

  @override
  State<Prototype> createState() => _PrototypeState();
}

class _PrototypeState extends State<Prototype> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 71,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Prototype and Prototypal Inheritance'),
          const P(
              'JavaScript is a popular programming language that supports object-oriented programming. One of the key features of object-oriented programming in JavaScript is Prototype and Prototypal Inheritance. Understanding how Prototype and Prototypal Inheritance works is essential to build efficient and scalable JavaScript applications.'),
          const P(
              'Prototype is an object that serves as a template for other objects. Every object in JavaScript has a prototype, which allows the object to inherit properties and methods from the prototype. To access an object\'s prototype, you can use the prototype property. For example, to access the prototype of an object named "myObject," you can use the code "myObject.prototype".'),
          const P(
              'Prototypal Inheritance is the mechanism that allows objects to inherit properties and methods from their prototypes. When you create a new object in JavaScript, it automatically inherits properties and methods from its prototype. You can add new properties and methods to an object\'s prototype using the prototype property. For example, if you want to add a new method to the prototype of an object named "myObject," you can use the code "myObject.prototype.newMethod = function(){}".'),
          const P(
              'In JavaScript, every object is linked to a prototype chain. The prototype chain is a sequence of prototypes that an object inherits from. When you try to access a property or method of an object, JavaScript looks for that property or method in the object itself. If the property or method is not found in the object, JavaScript looks for it in the object\'s prototype. If the property or method is still not found, JavaScript continues to look for it in the prototype chain until it reaches the end of the chain, which is the Object.prototype object.'),
          const P(
              'Using Prototype and Prototypal Inheritance in JavaScript can help you create more efficient and scalable code. By using prototypes, you can avoid duplicating code and create objects that share common properties and methods. Prototypal Inheritance allows you to create objects that inherit properties and methods from their prototypes, which can reduce the amount of code you need to write and make your code easier to maintain. Here are some examples that illustrate how prototype and prototypal inheritance work in JavaScript:'),
          const H2('Example 1: Using Prototype to Add a Method to an Object'),
          const H3('Source Code'),
          Code(title: 'script.js', code: code1, type: 'javascript'),
          const H2('Example 2:'),
          const H3('Source Code'),
          Code(title: 'script.js', code: code2, type: 'javascript'),
          const P(
              'In the above code, we first define an object obj1 with three properties: name, city, and info. The info property is a method that returns a string containing the name and city properties. We then create a new object obj2 using the Object.create() method, with obj1 as its prototype. This means that obj2 inherits all properties and methods of obj1. In other words, obj2 is a new object that is linked to obj1 through its prototype chain.'),
          const P(
              'Finally, we modify the name property of obj2 to be "Raja". This creates a new name property on obj2 that shadows the name property of obj1. When we access the name property of obj2, it returns "Raja", and when we access the name property of obj1, it returns "Joes".'),
          const P(
              'Here\'s an example of how you can access the properties and methods of obj1 and obj2:'),
          Code(title: 'script.js', code: code3, type: 'javascript'),
          const P(
              'As you can see, obj2 inherits the info method from obj1, and when we call it on obj2, it uses the name property of obj2 instead of obj1. This is an example of prototypal inheritance, where objects inherit properties and methods from their prototype chain.'),
          const Note(
              'In javascript all are object, to manage all by using prototype and also user defined function also acts object'),
          const H2('Prototype chaining'),
          const Li('All are object in JS'),
          const Li('There are three level of Prototype'),
          Code(
            title: 'Text',
            code: prototypeChainingConcept,
            type: 'javascript',
          ),
          const H3('Source Code'),
          Code(title: 'script.js', code: code4, type: 'javascript'),
          const P(
              'In conclusion, Prototype and Prototypal Inheritance are important concepts in JavaScript\'s object-oriented programming model. By understanding how prototypes work, you can create more efficient and scalable code, and by using prototypal inheritance, you can reduce the amount of code you need to write and make your code easier to maintain.')
        ],
      ),
    );
  }
}

var code4 = '''
// Understanding Prototype and Prototypal Inheritance in JavaScript

let arr = ["apple", "orange"];

// console
arr.length;
arr.__proto__;
Array.prototype;

// -------------------------------

let obj = {
  name: "Joes",
  city: "salem",
  info: function () {
    return `\${this.name} from \${this.city}`;
  },
};

// console
obj.toString();
Object.prototype;

// -------------------------------

function myFunction() {}

// console
myFunction.__proto__;

// -------------------------------

let obj1 = {
  name: "Joes",
  city: "salem",
  info: function () {
    return `\${this.name} is from \${this.city}`;
  },
};

// 1st method but not used this method because this is not efficient, try another method
let obj2 = {
  name: "Joes",
};

// obj 1 all properties are shared in obj2
obj2.__proto__ = obj1;

/* const obj2 = Object.create(obj1);*/

obj2.name = "Raja";
// obj2.city = "Chennai";

// console
obj2.name;
obj2.city;
obj2.info();

console.log(obj2.info());

// -------------------------------

// To add method in array
Array.prototype.doubleLength = function () {
  return this.length * 2;
};

// -------------------------------

// To add method in function
Function.prototype.mybind = function () {
  console.log("This is bind function in prototype");
};

function fun() {}

// console
fun.mybind();

function Person(name) {
  this.name = name;
}

Person.prototype.greet = function () {
  console.log(`Hello, my name is \${this.name}.`);
};

const alice = new Person("Alice");
const bob = new Person("Bob");

alice.greet(); // logs "Hello, my name is Alice."
bob.greet(); // logs "Hello, my name is Bob."
// Define a person object with a name property

/*
arr.__proto__.__proto__                     => Object.prototype

arr.__proto__.__proto__.__proto__           => null

obj.__proto__                               => Object.prototype
obj.__proto__.__proto__                     => null

myFunction.__proto__                        => Function.prototype
myFunction.__proto__.__proto__              => Object.prototype
myFunction.__proto__.__proto__.__proto__    => null
*/
''';
var code3 = '''
// Access the name property of obj1
console.log(obj1.name); // output: "Joes"

// Call the info method of obj1
console.log(obj1.info()); // output: "Joes is from salem"

// Access the name property of obj2
console.log(obj2.name); // output: "Raja"

// Call the info method of obj2, which inherits from obj1
console.log(obj2.info()); // output: "Raja is from salem"
''';

var code2 = '''
let obj1 = {
  name: "Joes",
  city: "salem",
  info: function () {
    return `\${this.name} is from \${this.city}`;
  },
};

const obj2 = Object.create(obj1);
obj2.name = "Raja";''';
var code1 = '''
function Person(name) {
  this.name = name;
}

// Add a greet method to the person object's prototype
Person.prototype.greet = function () {
  console.log("Hello, my name is " + this.name);
};

// Create a new person object and call the greet method
var person = new Person("John");
person.greet(); // output: "Hello, my name is John"
''';
var prototypeChainingConcept = '''
arr.__proto__.__proto__                     => Object.prototype
arr.__proto__.__proto__.__proto__           => null

obj.__proto__                               => Object.prototype
obj.__proto__.__proto__                     => null

myFunction.__proto__                        => Function.prototype
myFunction.__proto__.__proto__              => Object.prototype
myFunction.__proto__.__proto__.__proto__    => null
''';
