import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/js/topicName/jsTopics.dart';

class Func extends StatefulWidget {
  const Func({Key? key}) : super(key: key);

  @override
  State<Func> createState() => _FuncState();
}

class _FuncState extends State<Func> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 61,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Function'),
          const H2('Types of Functions'),
          const H3('No Return Type Without Argument Function'),
          Code(title: 'script.js', code: code1, type: 'javascript'),
          const H3('No Return Type With Argument Function'),
          Code(title: 'script.js', code: code2, type: 'javascript'),
          const H3('Return Type Without Argument Function'),
          Code(title: 'script.js', code: code3, type: 'javascript'),
          const H3('Return Type With Argument Function'),
          Code(title: 'script.js', code: code4, type: 'javascript'),
          const H3('Function with Arbitrary arguments'),
          const H4('using arguments keyword'),
          const Note('arguments is keyword, stored form => array'),
          Code(title: 'script.js', code: code5, type: 'javascript'),
          const H4('using spread operator'),
          Code(title: 'script.js', code: code6, type: 'javascript'),
          const H3('Function as Expression'),
          const P(
              'In JavaScript, a function can also be defined as an expression. This means that a function can be assigned to a variable or passed as an argument to another function.'),
          const Note(
              'function na expression aa create panni atha oru variable store pani use panurathu'),
          Code(title: 'script.js', code: code7, type: 'javascript'),
          const H3('Arrow Function'),
          const P(
              'An arrow function, also known as a "fat arrow" function, is a shorthand syntax for defining a function in JavaScript. It was introduced in ECMAScript 6 (ES6) and is now a widely used feature in JavaScript development.'),
          const H4('Syntax'),
          const P('   const functionName = (parameters) => { function body };'),
          Code(title: 'script.js', code: code8, type: 'javascript'),
          const Note(
              'Arrow functions have some important differences when compared to traditional function expressions:'),
          const Li(
              'The "this" keyword inside an arrow function refers to the same "this" as the surrounding scope, and it is not redefined when the function is invoked.'),
          const Li(
              'Arrow functions do not have a "arguments" object, and you should use the rest parameter syntax instead.'),
          const Li('Arrow functions cannot be used as constructors.'),
          const Li(
              'Arrow functions are useful for creating concise, readable code and for passing anonymous functions as arguments to other functions.'),
          const P(
              'Here is the some more examples of using arrow functions in JavaScript with detailed explanations:'),
          const H4('1. Using arrow functions with map():'),
          Code(title: 'script.js', code: code9, type: 'javascript'),
          const H4('2. Using arrow functions with filter():'),
          Code(title: 'script.js', code: code10, type: 'javascript'),
          const H4('3. Using arrow functions with reduce():'),
          Code(title: 'script.js', code: code11, type: 'javascript'),
          const H4('4. Using arrow functions to create a closure:'),
          const Note(
              'A closure is a feature of JavaScript that allows inner functions to access the outer scope of a function. Closure helps in binding a function to its outer boundary and is created automatically whenever a function is created. A block is also treated as a scope since ES6.'),
          Code(title: 'script.js', code: code12, type: 'javascript'),
          const H3('Default Parameter Function'),
          const P(
              'A default parameter function is a function in which one or more parameters have a default value specified. In the event that the caller of the function does not provide a value for that parameter, the default value will be used instead.'),
          Code(title: 'script.js', code: code13, type: 'javascript'),
          const H3('Function hoisting'),
          const P(
              'Function hoisting is a feature in JavaScript that allows you to call a function before it is defined in the code. This occurs because when JavaScript is interpreted, all function declarations are moved to the top of their scope, which is known as hoisting.'),
          const Note(
              'In JavaScript, Hoisting is the default behaviour of moving all the declarations at the top of the scope before code execution.'),
          const Note(
              'function hoisting applies only to function declarations and not function expressions.'),
          const P(
              'Function hoisting can be useful in certain situations but it can also lead to unexpected behavior if not used correctly. It\'s good practice to always define functions before calling them in your code to avoid confusion and bugs.'),
          Code(title: 'script.js', code: code14, type: 'javascript'),
          const H3('Nested Function'),
          const P(
              'In JavaScript, it is possible to define a function inside another function, also known as a nested function. A nested function has access to the variables and functions in the parent function\'s scope, also known as the enclosing scope.'),
          Code(title: 'script.js', code: code15, type: 'javascript'),
          const P(
              'Nested functions can be useful for creating more modular and organized code. They can also be used to create closures, which are functions that maintain their state even after they have returned.'),
          const Note(
              'It\'s important to note that inner functions have access to the variables and functions in the parent function, but the parent function doesn\'t have access to the variables and functions inside the inner function.\nAlso, the inner function can be invoked only by the parent function.'),
          const H3('Lexical scope'),
          const P(
              'In JavaScript, lexical scope refers to the way in which the variables, functions, and objects in a program are associated with specific scopes, or regions of the code where they are accessible. Each function in JavaScript has its own scope, which is determined by the location of the function in the code, and the scopes of any parent functions that contain it.'),
          Code(title: 'script.js', code: code16, type: 'javascript'),
          const P(
              'JavaScript uses a scope chain to determine which variables are accessible in a particular scope. The scope chain starts with the local scope and then moves up to the parent scope, and so on, until it reaches the global scope.'),
          const P(
              'JavaScript has a lexical scoping which means that the scope of a variable is defined by its location in the code, and not by its execution context.Understanding lexical scope is an important part of understanding how JavaScript works and can help you write more efficient and effective code. '),
          const H2('Scope'),
          const H3('Block Scope and Function Scope'),
          const P(
              'JavaScript has two types of scope: block scope and function scope. Understanding the difference between the two can help you write better, more maintainable code.'),
          const H4('Block scope'),
          const P(
              'Block scope refers to variables declared within a block using the let or const keyword. These variables are only accessible within that block and any nested blocks. A block is defined as any section of code enclosed by curly braces {}.'),
          Code(title: 'script.js', code: code17, type: 'javascript'),
          const H4('Function scope'),
          const P(
              'Function scope refers to variables declared within a function using the var keyword (or no keyword at all). These variables are only accessible within that function and any nested functions.'),
          Code(title: 'script.js', code: code18, type: 'javascript'),
          const H4(
              'Difference between block scope and function scope in JavaScript:'),
          TableResponsive(
            table: CTable(
              col: const [
                DataColumn(
                  label: ThText('Block Scope'),
                ),
                DataColumn(
                  label: ThText('Function Scope'),
                )
              ],
              row: [
                DataRow(
                  cells: [
                    DataCell(
                      Column(
                        children: [
                          Code(
                            title: 'script.js',
                            code: code19,
                            type: 'javascript',
                          ),
                          const P(
                              'In this example, the variable fullname is defined as a block scope variable and is only accessible within the block it is declared in. When the console.log(fullname) statement is executed inside the if block, it correctly outputs "Joes". However, when the console.log(fullname) statement is executed outside of the if block, it raises a ReferenceError, because the variable fullname is not defined in that scope.'),
                        ],
                      ),
                    ),
                    DataCell(
                      Column(
                        children: [
                          Code(
                            title: 'script.js',
                            code: code20,
                            type: 'javascript',
                          ),
                          const P(
                              'In this example, the variable fullname is defined as a function scope variable and is accessible within the entire function. When the console.log(fullname) statement is executed inside the if block, it correctly outputs "Joes". When the console.log(fullname) statement is executed outside of the if block, it correctly outputs "Joes" too, because the variable fullname is defined in the function scope.'),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          const P(
              'Using the appropriate scope for your variables can help prevent naming conflicts, improve the readability of your code, and make it easier to debug issues. As a general rule of thumb, use let and const for block scope variables and avoid using varas it can lead to unexpected behavior.'),
          const P(
              'Block scope variables, declared with the let or const keyword, are only accessible within the block they are defined in and any nested blocks. Function scope variables, declared with the var keyword, are only accessible within the function they are defined in and any nested functions. It is recommended to use block scope variables (let, const) instead of function scope variables (var) as it can prevent naming conflicts and improve the readability of the code.'),
          const H2(
              'Differences between Rest Parameter Functions and Spread Operators'),
          const P(
              'JavaScript is a powerful programming language that provides many features and tools to make coding easier and more efficient. Two of these features are the rest parameter function and the spread operator, which are similar in that they both handle multiple arguments, but have different uses and syntax.'),
          TableResponsive(
            table: CTable(
              col: const [
                DataColumn(
                  label: ThText(
                    'Rest parameter',
                  ),
                ),
                DataColumn(
                  label: ThText(
                    'Spread operator',
                  ),
                ),
              ],
              row: [
                DataRow(
                  cells: [
                    DataCell(
                      Column(
                        children: [
                          const P(
                              'A rest parameter function is used to accept an arbitrary number of arguments as an array. The rest parameter is defined by three dots (...) followed by the parameter name.'),
                          Code(
                            title: 'script.js',
                            code: code21,
                            type: 'javascript',
                          ),
                          const P(
                              'In this example, the function "myFunction" takes three arguments: "first", "second", and "rest". "rest" is a rest parameter, and it will collect all the remaining arguments into an array.')
                        ],
                      ),
                    ),
                    DataCell(
                      Column(
                        children: [
                          const P(
                              'he spread operator is used to expand an iterable (such as an array or string) into individual elements. The spread operator is defined by three dots (...) and can be used in function calls, array literals, and object literals'),
                          Code(
                            title: 'script.js',
                            code: code22,
                            type: 'javascript',
                          ),
                          const P(
                              'In this example, the spread operator is used to expand the elements of "myArray" into a new array "newArray".'),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          const P(
              'In summary, the rest parameter function and the spread operator are both useful tools in JavaScript for handling multiple arguments, but they have different uses and syntax. The rest parameter function is used to gather remaining arguments into an array, while the spread operator is used to spread elements of an array or iterable. Understanding the differences between these two features can help you write cleaner, more efficient code.'),
          const H2('Parameter Destructuring'),
          const P(
              'JavaScript offers a powerful feature called "parameter destructuring" that allows developers to extract specific properties from an object or elements from an array and assign them to individual variables when defining a function\'s parameters. This results in more concise and readable code, and can make our development process more efficient.'),
          const H3('we have a person object'),
          const Li('const person = {name: \'Joes\', age: 30};'),
          const P(
              'Instead of accessing the properties of this object using dot notation or bracket notation, we can destructure the object\'s properties directly into variables. '),
          const H4('In normal parameter'),
          Code(title: 'script.js', code: code23, type: 'javascript'),
          const H4('Parameter Destructuring in Object'),
          const Li('Takes a single argument'),
          Code(title: 'script.js', code: code24, type: 'javascript'),
          const Li('Takes two arguments'),
          Code(title: 'script.js', code: code25, type: 'javascript'),
          const Li('Set default values for properties'),
          Code(title: 'script.js', code: code26, type: 'javascript'),
          const Li(
              'We can also use the rest operator to collect remaining properties in a single variable.'),
          Code(title: 'script.js', code: code27, type: 'javascript'),
          const H4('Parameter Destructuring in Array'),
          Code(title: 'script.js', code: code28, type: 'javascript'),
          const P(
              'In conclusion, parameter destructuring is a powerful feature in JavaScript that allows developers to extract specific properties from an object or elements from an array and assign them to individual variables when defining a function\'s parameters. This results in more concise and readable code, and can make our development process more efficient. It is a great tool to have in your toolbox as a JavaScript developer.'),
          const H2('Using Callback Functions'),
          const P(
              'JavaScript is a versatile and powerful programming language that offers many ways to structure and organize code. One such technique is the use of callback functions'),
          const P(
              'A callback function is a function that is passed as an argument to another function. The function that receives the callback function as an argument is often referred to as a higher-order function. When the higher-order function is called, it can execute the callback function that was passed as an argument, allowing for greater flexibility and reusability of code.'),
          const P(
              'Here is an example of a higher-order function that takes a callback function as an argument:'),
          Code(title: 'script.js', code: code29, type: 'javascript'),
          const P(
              'The callback function can then be passed as an argument when the higher-order function is called:'),
          Code(title: 'script.js', code: code30, type: 'javascript'),
          const P(
              'One of the main use cases for callback functions is event handling. For example, you can pass a callback function as an argument to an event listener, allowing for specific actions to be taken when a specific event occurs, such as a button click or form submission.'),
          const P(
              'Another common use case is for asynchronous operations. Callback functions can be passed as arguments to asynchronous functions, such as setTimeout() or XMLHttpRequest, allowing for specific actions to be taken once the asynchronous operation is complete.'),
          const P(
              'A simple example of a callback function is the setTimeout() function, which is a built-in JavaScript function that allows you to execute a function after a specified amount of time has passed. The setTimeout() function takes two arguments: a callback function and a time delay (in milliseconds):'),
          Code(title: 'script.js', code: code31, type: 'javascript'),
          const P(
              'Callback functions are also commonly used in iteration, for example, forEach() or map() methods in JavaScript, to allow for specific actions to be taken on each element of an array for example'),
          Code(title: 'script.js', code: code32, type: 'javascript'),
          const P(
              'In React, a common pattern is to use higher-order components (HOCs) that take a component as an argument and return a new component with additional functionality. The original component is passed as a callback function to the HOC.'),
          const P(
              'Lastly, callback functions can also be used for partial application, allowing to "fix" or "partial apply" some of the arguments of a function, creating a new function with less arguments.'),
          const P(
              'In conclusion, callback functions are a powerful tool in JavaScript that allows for greater flexibility and reusability of code. By understanding how to use callback functions, you can write more modular, reusable, and maintainable code.'),
        ],
      ),
    );
  }
}

var code = '''''';
var code32 = '''
const numbers = [1, 2, 3];

numbers.forEach(function (number) {
  console.log(number);
}); 
''';
var code31 = '''
setTimeout(function () {
  console.log("Hello, world!");
}, 1000); // Output: "Hello, world!" after 1 second
''';
var code30 = '''
function myCallback() {
  console.log("I am a callback function");
}

higherOrderFunction(myCallback);
// Output: "I am a callback function"
''';
var code29 = '''
function higherOrderFunction(mycallback) {
  // some code
  mycallback();
  // some code
}
''';
var code28 = '''
const numbers = [1, 2, 3];

function add([a, b, c]) {
  return a + b + c;
}

console.log(add(numbers)); // Output: 6
''';
var code27 = '''
const person = {name: 'Joes', age: 30, city: 'Salem', country: 'India'};

function sayHello({ name, age ,...rest) {
console.log (`Hello, \${name}! You are \${age} years old`);
  console.log(ஃrest);
}

sayHello(person);
''';
var code26 = '''
function sayHello({ name, age = 25 }) {
  console.log(`Hello, \${name}! You are \${age} years old`);
}

sayHello(person);
''';
var code25 = '''
function sayHello({ name, age }) {
  console.log(`Hello, \${name}!`);
  console.log(`Age is, \${age}!`);
}

sayHello(person);
''';
var code24 = '''
function sayHello({ name }) {
  console.log(`Hello, \${name}!`);
}

sayHello(person); // Output: "Hello, Joes!"
''';
var code23 = '''
function sayHello(name) {
  console.log(`Hello, \${name}!`);
}

sayHello("Sathish"); // Output: "Hello, Sathish!"
''';
var code22 = '''
let myArray = [1, 2, 3];
let newArray = [...myArray, 4, 5];
console.log(newArray);
// Output: [1, 2, 3, 4, 5]
''';
var code21 = '''
function myFunction(first, second, ...rest) {
  console.log(first);
  console.log(second);
  console.log(rest); // output: array form {}
}

myFunction(10, 20, 30, 40);
''';
var code20 = '''
function myFunction() {
  if (true) {
    var fullname = "Joes";
    console.log(fullname);
  }
  console.log(fullname);
}
myFunction();
''';
var code19 = '''
function myFunction() {
  if (true) {
    let fullname = "Joes";
    console.log(fullname);
  }
  console.log(fullname);
}
myFunction();
''';
var code18 = '''
function myFunction() {
  var functionScopeVariable = "I am a variable with function scope";
  // functionScopeVariable = "I am a variable with function scope";
  console.log(functionScopeVariable);

  function add() {
    console.log("Inside the add functions", functionScopeVariable);
  }
  add();
}
myFunction();
console.log(functionScopeVariable); // ReferenceError: functionScopeVariable is not defined
''';
var code17 = '''
if (true) {
  let blockScopeVariable = "I am a variable with block scope";
  console.log(blockScopeVariable); // Output: "I am a variable with block scope"
}

console.log(blockScopeVariable);
''';
var code16 = '''
var globalVariable = "I am a global variable";

function outerFunction() {
  let outerVariable = "I am a variable in the outer function";

  function innerFunction() {
    let innerVariable = "I am a variable in the inner function";
    console.log(globalVariable); // Output: "I am a global variable"
    console.log(outerVariable); // Output: "I am a variable in the outer function"
    console.log(innerVariable); // Output: "I am a variable in the inner function"
  }

  innerFunction();
}
outerFunction();
''';
var code15 = '''
function outerFunction() {
  let outerVariable = "I am a variable in the outer function";

  function innerFunction() {
    let innerVariable = "I am a variable in the inner function";
    console.log(outerVariable); // Output: "I am a variable in the outer function"
    console.log(innerVariable); // Output: "I am a variable in the inner function"
  }

  innerFunction();
}
outerFunction();
''';
var code14 = '''
// Function Declaration
hoistedFunction(); // Output: "I'm a hoisted function"
function hoistedFunction() {
  console.log("I'm a hoisted function");
}

// Function Expression
// notHoistedFunction();
// the above code is uncommand , its Reference show error
let notHoistedFunction = function () {
  console.log("I'm a function expression");
};
''';
var code13 = '''
function addition(a, b = 5) {
  return a + b;
}
console.log(addition(25, 30));
console.log(addition(25));
''';
var code12 = '''
let createCounter = () => {
  let count = 0;
  return () => {
    count++;
    return count;
  };
};
let counter = createCounter();
console.log(counter()); // 1
console.log(counter()); // 2
''';
var code11 = '''
let numbers = [1, 2, 3, 4, 5];
let total = numbers.reduce((sum, number) => sum + number, 0);
console.log(total); // 15
''';
var code10 = '''
let words = ["apple", "banana", "orange", "grape"];
let filteredWords = words.filter((word) => word.length > 5);
console.log(filteredWords); // ['banana', 'orange']
''';
var code9 = '''
let numbers = [1, 2, 3, 4, 5];
let doubledNumbers = numbers.map((number) => number * 2);
console.log(doubledNumbers); // [2, 4, 6, 8, 10]
''';
var code8 = '''
const add = (a, b) => {
  return a + b;
};
console.log(add(1, 2)); // 3

const add1 = (a, b) => a + b;
console.log(add1(1, 2)); // 3
''';
var code7 = '''
const add = function (a, b) {
  return a + b;
};
console.log(add(1, 2)); // 3
''';
var code6 = '''
function sum(...args) {
  let total = 0;
  for (let i = 0; i < args.length; i++) {
    total += args[i];
  }
  return total;
}

console.log(sum(1, 2, 3)); // 6
console.log(sum(1, 2, 3, 4, 5)); // 15
''';
var code5 = '''
function sum() {
  let total = 0;
  for (let i = 0; i < arguments.length; i++) {
    total += arguments[i];
  }
  return total;
}

console.log(sum(1, 2, 3)); // 6
console.log(sum(1, 2, 3, 4, 5)); // 15
''';
var code4 = '''
function div(a, b) {
  c = a / b;
  return c;
}

x = div(25, 2);
console.log("Division ", x);
''';
var code3 = '''
function mul() {
  a = 10;
  b = 20;
  c = a * b;
  return c;
}

x = mul();
console.log("Mul ", x);
''';
var code2 = '''
function sub(a, b) {
  c = a - b;
  console.log("Difference : ", c);
}

sub(25, 2);
''';
var code1 = '''
function add() {
  let a = 10;
  let b = 20;
  let c = a + b;
  console.log(c);
}
add();
''';
