import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/JS/topicName/jsTopics.dart';

class thisKey extends StatefulWidget {
  const thisKey({Key? key}) : super(key: key);

  @override
  State<thisKey> createState() => _thisKeyState();
}

class _thisKeyState extends State<thisKey> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 68,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('this keyword in JavaScript Arrow Functions'),
          const P(
              'JavaScript is a powerful and versatile language, with a lot of features and concepts to master. One of the most important concepts to understand is the this keyword.'),
          const P(
              'In JavaScript, the this keyword inside a function refers to the object that the function is a property of or the object that the function is called on. However, the behavior of the this keyword inside an arrow function is different from regular functions.'),
          const P(
              'In an arrow function, the this keyword is lexically scoped, meaning it takes on the value of the this keyword in the surrounding code. The this keyword in an arrow function does not get rebound when the function is invoked, unlike regular functions. It keeps the same value as the this keyword in the surrounding code.'),
          const P('this keyword working based on how this function call'),
          const H4('Eg - 1'),
          const Li(
              'info() refer current window object in local and global scope'),
          const H4('Eg - 2'),
          const Li('suppose use any object to call the function'),
          const H5('     for example'),
          const Li('       student.func1()'),
          const Li('       in this above case take student object'),
          const H3('Source Code'),
          Code(title: 'script.js', code: code, type: 'javascript'),
        ],
      ),
    );
  }
}

var code = '''
// print current window object
console.log(this);

// -------------------------------------

var age = 25;

function info() {
  console.log(age);
  console.log(this.age); // because it denotes window object
  console.log(this);
}

info(); // this function calling internally in JS is window.info()

// It is clear that variable or function declare in global scope, athu kandipa window object kulla tha irrukum

// -------------------------------------

// now this function declared inside other object
const user = {
  age: 45, //to print age
  func: info, // to print current user object details
};

user.func();

// in nested function
const user1 = {
  age: 45,
  func: info,
  nested: {
    age: 15,
    func: info,
  },
};

user1.nested.func(); // to print age is 15 and current scope object

const student = {
  age: 25,
  func1: function () {
    console.log("Fun 1", this.age);
    console.log("Fun 1", this);
    function func2() {
      console.log("Fun 2", this.age);
      console.log("Fun 2", this);
    }
    func2(); //refer window object becuase it call in free from object.
  },
};

student.func1(); // refer student object

// -------------------------------------

// In case suppose arrow function is totally different
const student1 = {
  age: 25,
  func1: function () {
    console.log("Fun 1", this.age);
    console.log("Fun 1", this);
    function func2() {
      console.log("Fun 2", this.age);
      console.log("Fun 2", this);
    }
    func2(); //refer window object

    const func3 = () => {
      console.log("Fun 3", this.age);
      console.log("Fun 3", this);
    };
    func3(); //refer current object because arrow function is totaly different and it special and intha function enga declare panromo athoda scope tha edukum
  },
};
student1.func1();
''';
