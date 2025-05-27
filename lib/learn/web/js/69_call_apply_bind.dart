import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/JS/topicName/jsTopics.dart';

class call_apply_bind extends StatefulWidget {
  const call_apply_bind({Key? key}) : super(key: key);

  @override
  State<call_apply_bind> createState() => _call_apply_bindState();
}

class _call_apply_bindState extends State<call_apply_bind> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 69,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('call, apply, and bind Methods'),
          const P(
              'In JavaScript, the call, apply, and bind methods are used to change the this context of a function.'),
          const H2('call'),
          const P(
              'The call method is used to invoke a function and specify the this context. It takes an object as its first argument, which becomes the this context for the function, followed by any additional arguments for the function.'),
          const H3('Source Code'),
          Code(title: 'script.js', code: code1, type: 'javascript'),
          const H2(
              'Also possible borrow method from one object to another object using call or bind or apply'),
          const H3('Source Code'),
          Code(title: 'script.js', code: code4, type: 'javascript'),
          const H2('apply'),
          const P(
              'The apply method is similar to call, but it takes an array of arguments for the function, instead of a list of arguments.'),
          const H3('Source Code'),
          Code(title: 'script.js', code: code2, type: 'javascript'),
          const H2('bind'),
          const P(
              'The bind method is used to create a new function with the this context set to the provided object. It takes an object as its first argument, which becomes the this context for the new function, and any additional arguments for the function are passed as arguments to the new function.'),
          const H3('Source Code'),
          Code(title: 'script.js', code: code3, type: 'javascript'),
          const H3('Complete Source Code'),
          Code(title: 'script.js', code: code5, type: 'javascript'),
          const P(
              'In conclusion, understanding and mastering the use of the call, apply, and bind methods in JavaScript is an important aspect of object-oriented programming. These methods allow you to change the this context of a function, enabling greater flexibility and reusability of code. With the ability to invoke a function with a specific context, pass an array of arguments, and create a new function with a pre-defined context, you will be able to write more efficient and maintainable code. Understanding these methods is essential for any JavaScript developer who wants to take their skills to the next level.'),
        ],
      ),
    );
  }
}

var code5 = '''
function sathish() {
  console.log(this);
}
console.log(sathish.name); // function name
console.log(sathish.toString()); // function name to string
// sathish();  // normal method

sathish.call(); // same result as sathish()

// var user_name = "Sathish";
function welcome() {
  console.log("Welcome " + this.user_name);
}

welcome(); // welcome.call()

const stud = { user_name: "Raja" };
welcome.call(stud); // refer stud object

// ------------------------------

// call
function total(eng, mat) {
  console.log(this.name + " got " + (eng + mat) + " Marks");
}

const user1 = { name: "Ram" };
total.call(user1, 65, 75); // Ram got 140 Marks

// ------------------------------

// apply
function total(eng, mat) {
  console.log(this.name + " got " + (eng + mat) + " Marks");
}

const user2 = { name: "Ram" };
total.apply(user2, [65, 75]); // Ram got 140 Marks

// ------------------------------

// bind
function total(eng, mat) {
  console.log(this.name + " got " + (eng + mat) + " Marks");
}

const user = { name: "Ram" };
const fun = total.bind(user, 65, 75);
fun(); // Ram got 140 Marks

// ------------------------------

// Also possible borrow method from one object to another object using call or bind or apply
const person = {
  firstName: "Sathish",
  lastName: "Kumar",
  fullName: function () {
    return this.firstName + " " + this.lastName;
  },
};

console.log(person.fullName());

anotherPerson = {
  firstName: "Ram",
  lastName: "Kumar",
};
console.log(person.fullName.call(anotherPerson));
''';
var code4 = '''
const person = {
  firstName: "Sathish",
  lastName: "Kumar",
  fullName: function () {
    return this.firstName + " " + this.lastName;
  },
};

console.log(person.fullName());

anotherPerson = {
  firstName: "Ram",
  lastName: "Kumar",
};
console.log(person.fullName.call(anotherPerson));
''';
var code3 = '''
function total(eng, mat) {
  console.log(this.name + " got " + (eng + mat) + " Marks");
}

const user = { name: "Ram" };
const fun = total.bind(user, 65, 75);
fun(); // Ram got 140 Marks
''';
var code2 = '''
function total(eng, mat) {
  console.log(this.name + " got " + (eng + mat) + " Marks");
}

const user2 = { name: "Ram" };
total.apply(user2, [65, 75]); // Ram got 140 Marks
''';
var code1 = '''
function total(eng, mat) {
  console.log(this.name + " got " + (eng + mat) + " Marks");
}

const user1 = { name: "Ram" };
total.call(user1, 65, 75); // Ram got 140 Marks
''';
