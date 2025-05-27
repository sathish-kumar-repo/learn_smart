import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/JS/topicName/jsTopics.dart';

class Getters_Setters extends StatefulWidget {
  const Getters_Setters({Key? key}) : super(key: key);

  @override
  State<Getters_Setters> createState() => _Getters_SettersState();
}

class _Getters_SettersState extends State<Getters_Setters> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 73,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Getters and Setters'),
          const P(
              'JavaScript is a versatile programming language that offers many powerful features for creating dynamic and interactive web applications. One of these features is the ability to define getters and setters for object properties. Getters and setters are functions that allow you to control the way that properties are accessed and modified, and they can be particularly useful in object-oriented programming.'),
          const P(
              'getters and setters are special functions that allow you to control the way that object properties are accessed and modified. Getters are functions that are called when you try to access a property, and setters are functions that are called when you try to modify a property. They are often used in object-oriented programming to encapsulate and control the behavior of object properties.'),
          const H3('Syntax'),
          Code(title: 'script.js', code: syntax, type: 'javascript'),
          const P(
              'The get keyword is used to define a getter, and the set keyword is used to define a setter. The name of the property being accessed or modified is used as the function name (in this example, propertyName). The getter function should return the value of the property, while the setter function should update the value of the property based on the argument passed to it.'),
          const H3('Example 1: Getters and Setters with Object Literals'),
          const P(
              'In this example, we use an object literal to define a person object that has firstName and lastName properties. We then define a getter and a setter for a fullName property, which concatenates the first and last names together.'),
          const H3('Source Code'),
          Code(title: 'script.js', code: code1, type: 'javascript'),
          const H3('Example 2: Same Example 1 but we use Class'),
          const H3('Source Code'),
          Code(title: 'script.js', code: code2, type: 'javascript'),
          const H3('Example 2: Getters and Setters with Classes'),
          const P(
              'In this example, we use a class definition to define a Circle class that has a radius property and two getters (diameter and area) and one setter (diameter).'),
          const H3('Source Code'),
          Code(title: 'script.js', code: code3, type: 'javascript'),
          const P(
              'In this example, the diameter setter allows us to set the radius property based on a given diameter value, while the diameter getter and the area getter allow us to retrieve information about the circle. This allows us to abstract away the details of how the circle is represented and focus on its properties and behavior.'),
          const P(
              'In conclusion, getters and setters are a powerful tool in JavaScript that allow us to encapsulate and control the behavior of object properties. By using getters and setters, we can create more robust and maintainable code that is easier to work with and understand.'),
        ],
      ),
    );
  }
}

var code3 = '''
// In this example, we use a class definition to define a Circle class that has a radius property and two getters (diameter and area) and one setter (diameter).
/*
 1 create a class called circle
 2 radius values a constructor
 3 getter and setter function called diameter 
 4 getter area()
 */

class Circle {
  constructor(radius) {
    this.radius = radius;
  }

  get diameter() {
    return this.radius * 2;
  }

  set diameter(diameter) {
    this.radius = diameter / 2;
  }

  get area() {
    return Math.PI * this.radius * this.radius;
  }
}

const myCircle = new Circle(5);
console.log(myCircle.radius); // output: 5
console.log(myCircle.diameter); // output: 10
console.log(myCircle.area); // output: 78.53981633974483

myCircle.diameter = 12;
console.log(myCircle.radius); // output: 6
console.log(myCircle.diameter); // output: 12
console.log(myCircle.area); // output: 113.09733552923254
''';
var code2 = '''
class Person {
  constructor(firstName, lastName) {
    this.firstName = firstName;
    this.lastName = lastName;
  }

  get fullName() {
    return this.firstName + " " + this.lastName;
  }
  set fullName(name) {
    const parts = name.split(" ");
    this.firstName = parts[0];
    this.lastName = parts[1];
  }
}

const p1 = new Person("Sathish", "Kumar");
console.log(p1);
console.log(p1.fullName);
p1.fullName = "Raj Kumar";

console.log(p1.firstName);
console.log(p1.lastName);
console.log(p1.fullName);
''';
var code1 = '''
const person = {
  firstName: "Tutor",
  lastName: "Joes",
  get fullName() {
    return this.firstName + " " + this.lastName;
  },
  set fullName(name) {
    const parts = name.split(" ");
    this.firstName = parts[0];
    this.lastName = parts[1];
  },
};

console.log(person.fullName); // output: "Tutor Joes"
person.fullName = "Sam Sundar";
console.log(person.firstName); // output: "Sam"
console.log(person.lastName); // output: "Sundar"
console.log(person.fullName); // output: "Sam Sundar"
''';
var syntax = '''
const obj = {
  get propertyName() {
    // code to get the property value
  },
  set propertyName(value) {
    // code to set the property value
  },
};
''';
