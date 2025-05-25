import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/js/topicName/jsTopics.dart';

class Function_Inside_Object extends StatefulWidget {
  const Function_Inside_Object({Key? key}) : super(key: key);

  @override
  State<Function_Inside_Object> createState() => _Function_Inside_ObjectState();
}

class _Function_Inside_ObjectState extends State<Function_Inside_Object> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 67,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Function Inside Object'),
          const P(
              'In JavaScript, functions can be defined inside objects, just like any other property. These functions are called "methods" and can be invoked by using the object\'s name, followed by the method name and parentheses.'),
          const H3('Source Code'),
          Code(title: 'script.js', code: code, type: 'javascript'),
        ],
      ),
    );
  }
}

var code = '''
// Function inside Objects
//in this topic, function set as key value pair in objects

const object1 = {
  method: function () {
    console.log("Hello, I'm a method!");
  },
};

object1.method(); // prints "Hello, I'm a method!"

//Other method, not mention function keyword
const object2 = {
  method() {
    console.log("Hello, I'm a method!");
  },
};

object2.method(); // prints "Hello, I'm a method!"

// Also possible arrow function
const object = {
  method: () => {
    console.log("Hello, I'm a method!");
  },
};

object.method(); // prints "Hello, I'm a method!"

//----------------------------------------

const object3 = {
  property: "I'm a property",
  method: function () {
    console.log(this.property);
  },
};

object3.method(); // prints "I'm a property"

// Methods can also accept parameters and return values just like regular functions:
const object4 = {
  method: function (a, b) {
    return a + b;
  },
};

console.log(object4.method(1, 2)); // prints 3

// In javascript you can use class keyword to create objects with methods and properties, it follows the OOP concepts.
class Object {
  constructor() {
    this.property = "I'm a property";
  }
  method() {
    console.log("Hello, I'm a method!");
  }
}

const obj = new Object();
console.log(obj.property);
obj.method();

//----------------------------------------------------

function checkEligiblity() {
  if (this.age >= 18) {
    console.log(`\${this.firstname} age is \${this.age} eligible for vote`);
  } else {
    console.log(`\${this.firstname} age is \${this.age} not eligible for vote`);
  }
}

const user1 = {
  firstname: "Joes",
  age: 35,
  eligiblity: checkEligiblity,
};
user1.eligiblity();

const user2 = {
  firstname: "Sara",
  age: 12,
  eligiblity: checkEligiblity,
};
user2.eligiblity();
''';
