import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/js/topicName/jsTopics.dart';

class classOb extends StatefulWidget {
  const classOb({Key? key}) : super(key: key);

  @override
  State<classOb> createState() => _classObState();
}

class _classObState extends State<classOb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 72,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Class and Inheritance'),
          const P(
              'JavaScript is an object-oriented programming language that supports class and inheritance, allowing you to create reusable code and organize your program in a more efficient way. In this blog, we will dive into the concept of class and inheritance in JavaScript and show you how to implement them using ES5 and ES6 syntax.'),
          const H2('Class and Inheritance in JavaScript'),
          const P(
              'A class is a blueprint for creating objects that share common properties and methods. In JavaScript, a class is defined using the class keyword in ES6 or the function keyword in ES5. A class can have a constructor that is called when an object is created, and it can also have methods that define the behavior of the object.'),
          const P(
              'Inheritance is a way of creating a new class from an existing class, called the parent or base class. The new class is called the child or derived class and inherits all the properties and methods of the parent class. In JavaScript, inheritance is achieved through the use of the prototype chain.'),
          const H3('ES5 Example'),
          const H3('Source Code'),
          Code(title: 'script.js', code: code1, type: 'javascript'),
          const P(
              'Firstly, a parent class Person is defined with a constructor that accepts a name parameter and assigns it to a property with the same name. A method called sayHello() is added to the Person.prototype object, which logs a greeting with the name property of the instance.'),
          const P(
              'Next, a child class Student is defined that inherits from the Person class. It accepts two parameters - name and age. It calls the parent constructor using Person.call(this, name) with this referring to the Student instance and assigns the age parameter to its own age property.'),
          const P(
              'To set up the prototype chain for inheritance, Student.prototype is assigned an object created by calling Object.create(Person.prototype), which creates a new object with Person.prototype as its prototype. The Student.prototype.constructor is then set to Student to ensure that new Student instances can be created.'),
          const P(
              'Finally, a method called eligibility() is added to the Student.prototype object. It checks if the age property is greater than or equal to 18 and logs a message with the student\'s name and eligibility status.'),
          const P(
              'Two instances of classes are created - person using the Person constructor with the name "Joes" and student using the Student constructor with the name "Joes" and age 35.'),
          const P(
              'Methods are then called on the instances. person.sayHello() logs "Hello, my name is Joes". student.sayHello() also logs "Hello, my name is Joes" because it inherits the sayHello() method from the Person class. student.eligibility() logs "Joes age is 35 Eligible" because the age property is greater than or equal to 18.'),
          const H3('ES6 Example'),
          const H3('Source Code'),
          Code(title: 'script.js', code: code1, type: 'javascript'),
          const P(
              'The code defines two classes in JavaScript, one parent class named Person and a child class named Student that inherits from the Person class.'),
          const P(
              'The Person class is defined using the class keyword with a constructor method that sets the name property of the class. It also has a method called sayHello() which logs a message to the console that includes the name property of the class.'),
          const P(
              'The Student class is defined using the extends keyword which tells JavaScript that this class inherits from the Person class. It has its own constructor method that takes two arguments name and age. The super() method is called in the Student constructor to call the constructor of the parent Person class with the name argument. The age property is then set on the Student instance.'),
          const P(
              'The Student class also has its own method called eligiblity() which logs a message to the console. The message checks whether the age property of the Student instance is greater than or equal to 18 and outputs either "Eligible" or "Not Eligible" accordingly.'),
          const P(
              'After defining the classes, two instances of the classes are created using the new keyword. The sayHello() and eligiblity() methods are called on these instances to log messages to the console.'),
        ],
      ),
    );
  }
}

var code2 = '''
// ES6 Example
// Now let's see how the same class and inheritance can be implemented using ES6 syntax.

// Define parent class
class Person {
  constructor(name) {
    this.name = name;
  }

  // Add method to class
  sayHello() {
    console.log(`Hello, my name is \${this.name}`);
  }
}

// Define child class that inherits from parent class
class Student extends Person {
  constructor(name, age) {
    super(name); // Call parent constructor with this instance
    this.age = age;
  }

  // Add method to child class
  eligiblity() {
    console.log(
      this.name +
        " age is " +
        this.age +
        " " +
        (this.age >= 18 ? "Eligible" : "Not Eligable")
    );
  }
}

// Create instances of classes
let person = new Person("Joes");
let student = new Student("Joes", 35);

// Call methods on instances
person.sayHello(); // Output: Hello, my name is Joes
student.sayHello(); // Output: Hello, my name is Joes
student.eligiblity(); // Output: Joes age is 35 Eligible
''';
var code1 = '''
// Class and Inheritance

// ES5 Example
// Let's start with an example of a class and inheritance using ES5 syntax.

// Define parent class
// It is act as constructor
function Person(name) {
  this.name = name;
}

// Add method to prototype
Person.prototype.sayHello = function () {
  console.log("Hello, my name is " + this.name);
};

// Define child class that inherits from parent class
function Student(name, age) {
  Person.call(this, name); // Call parent constructor with this instance
  this.age = age;
}

// Set up prototype chain for inheritance
Student.prototype = Object.create(Person.prototype);
Student.prototype.constructor = Student;

// Add method to child class
Student.prototype.eligiblity = function () {
  console.log(
    this.name +
      " age is " +
      this.age +
      " " +
      (this.age >= 18 ? "Eligible" : "Not Eligable")
  );
};

// Create instances of classes
var person = new Person("Joes");
var student = new Student("Joes", 35);

// Call methods on instances
person.sayHello(); // Output: Hello, my name is Joes
student.sayHello(); // Output: Hello, my name is Joes
student.eligiblity(); // Output: Joes age is 35 Eligible
''';
