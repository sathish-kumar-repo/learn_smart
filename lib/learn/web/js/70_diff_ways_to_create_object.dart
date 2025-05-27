import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/JS/topicName/jsTopics.dart';

class diff_ways_to_create_object extends StatefulWidget {
  const diff_ways_to_create_object({Key? key}) : super(key: key);

  @override
  State<diff_ways_to_create_object> createState() =>
      _diff_ways_to_create_objectState();
}

class _diff_ways_to_create_objectState
    extends State<diff_ways_to_create_object> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 70,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Different Ways to Create Objects'),
          const P(
              'When programming in JavaScript, one of the key concepts is object-oriented programming. Objects allow you to store data and functions in a structured way, making it easier to organize your code and access your data. There are many ways to create objects in JavaScript, but in this section, we will explore three popular approaches.'),
          const H2('Code 1: Object Literal Notation'),
          const P(
              'In JavaScript, the this keyword inside a function refers to the object that the function is a property of or the object that the function is called on. However, the behavior of the this keyword inside an arrow function is different from regular functions.'),
          const P(
              'One way to create objects in JavaScript is using object literal notation. This approach involves defining the object properties and methods within curly braces.'),
          const H3('Source Code'),
          Code(title: 'script.js', code: code1, type: 'javascript'),
          const H2('Code 2: Factory Function'),
          const P(
              'Another approach to creating objects is using a factory function. This involves creating a function that returns a new object with the desired properties and methods'),
          const H3('Source Code'),
          Code(title: 'script.js', code: code2, type: 'javascript'),
          const H2('Code 3: Prototype Inheritance'),
          const P(
              'A third approach is using prototype inheritance. This involves creating a prototype object with shared methods and properties, and then creating new objects that inherit from the prototype.'),
          const H3('Source Code'),
          Code(title: 'script.js', code: code3, type: 'javascript'),
          const P(
              'This code is similar to Code 2, but it uses Object.create to create a new object that inherits from studentMethod. This means that the new object has access to all the methods and properties defined in studentMethod.'),
          const H3('Complete Source Code'),
          Code(title: 'script.js', code: code4, type: 'javascript'),
          const TableResponsive(
            table: CTable(
              col: [
                DataColumn(
                  label: ThText('Approach'),
                ),
                DataColumn(
                  label: ThText('Advantages'),
                ),
                DataColumn(
                  label: ThText('Disadvantages'),
                ),
              ],
              row: [
                DataRow(
                  cells: [
                    DataCell(
                      TrText('Object Literal Notation'),
                    ),
                    DataCell(
                      TrText('Simple and easy to read'),
                    ),
                    DataCell(
                      TrText('Does not allow for creating multiple instances'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('Factory Function'),
                    ),
                    DataCell(
                      TrText(
                          'Allows for creating multiple instances with shared methods'),
                    ),
                    DataCell(
                      TrText(
                          'Requires an extra function to create each instance'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('Prototype Inheritance'),
                    ),
                    DataCell(
                      TrText(
                          'Allows for creating multiple instances with shared methods and avoids duplicating methods'),
                    ),
                    DataCell(
                      TrText('Can be more complex to understand'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

var code4 = '''
// Code 1: Object Literal Notation
const student = {
  fullName: "Ram",
  father: "Sam",
  age: 12,
  address: "cherry road",
  city: "salem",
  about: function () {
    return `\${this.fullName} is from \${this.city}`;
  },
  eligibility: function () {
    return this.age >= 18;
  },
};

console.log(student);
console.log(student.about());

// -----------------------------------

// Code 2: Factory Function
function addStudent(fullName, father, age, address, city) {
  const user = {};
  user.fullName = fullName;
  user.father = father;
  user.age = age;
  user.address = address;
  user.city = city;
  user.about = function () {
    return `\${this.fullName} is from \${this.city}`;
  };
  user.eligibility = function () {
    return this.age >= 18;
  };
  return user;
}
console.log(addStudent("Sam", "Raja", 25, "Gandhi Road", "Salem"));

// -----------------------------------

// same thing but using only references memory
// but this method is very useful to use because previous method ,each time call the function addStudent and to create new two function about and eligibility, so its occupy over memory usage
const studentMethod1 = {
  about: function () {
    return `\${this.fullName} is from \${this.city}`;
  },
  eligibility: function () {
    return this.age >= 18;
  },
};

function addStudent2(fullName, father, age, address, city) {
  const user = {};
  user.fullName = fullName;
  user.father = father;
  user.age = age;
  user.age = age;
  user.address = address;
  user.city = city;
  user.about = studentMethod1.about;
  user.eligibility = studentMethod1.eligibility;
  return user;
}

console.log(addStudent2("Sam", "Raja", 25, "Gandhi Road", "Salem"));

// Code 3: Prototype Inheritance
const studentMethod = {
  about: function () {
    return `\${this.fullName} is from \${this.city}`;
  },
  eligibility: function () {
    return this.age >= 18;
  },
};

function addStudent1(fullName, father, age, address, city) {
  const user = Object.create(studentMethod); //to give object studentMethod reference
  user.fullName = fullName;
  user.father = father;
  user.age = age;
  user.age = age;
  user.address = address;
  user.city = city;
  return user;
}

console.log(addStudent1("Sam", "Raja", 25, "Gandhi Road", "Salem"));

// -----------------------------------

// understanding 3rd type

const ob1 = {
  key1: "Value1",
  key2: "Value2",
};
const ob2 = Object.create(ob1);
// ob2.key2="New value 2";
ob2.key3 = "Value3";

// const ob2={
//     Key3:"Value3"
// };

console.log(ob1);
console.log(ob2.key2);
''';
var code3 = '''
const studentMethod = {
  about: function () {
    return `\${this.fullName} is from \${this.city}`;
  },
  eligibility: function () {
    return this.age >= 18;
  },
};

function addStudent1(fullName, father, age, address, city) {
  const user = Object.create(studentMethod); //to give object studentMethod reference
  user.fullName = fullName;
  user.father = father;
  user.age = age;
  user.age = age;
  user.address = address;
  user.city = city;
  return user;
}

console.log(addStudent1("Sam", "Raja", 25, "Gandhi Road", "Salem"));
''';
var code2 = '''
function addStudent(fullName, father, age, address, city) {
  const user = {};
  user.fullName = fullName;
  user.father = father;
  user.age = age;
  user.address = address;
  user.city = city;
  user.about = function () {
    return `\${this.fullName} is from \${this.city}`;
  };
  user.eligibility = function () {
    return this.age >= 18;
  };
  return user;
}
console.log(addStudent("Sam", "Raja", 25, "Gandhi Road", "Salem"));

// -----------------------------------

// same thing but using only references memory
// but this method is very useful to use because previous method ,each time call the function addStudent and to create new two function about and eligibility, so its occupy over memory usage
const studentMethod1 = {
  about: function () {
    return `\${this.fullName} is from \${this.city}`;
  },
  eligibility: function () {
    return this.age >= 18;
  },
};

function addStudent2(fullName, father, age, address, city) {
  const user = {};
  user.fullName = fullName;
  user.father = father;
  user.age = age;
  user.age = age;
  user.address = address;
  user.city = city;
  user.about = studentMethod1.about;
  user.eligibility = studentMethod1.eligibility;
  return user;
}

console.log(addStudent2("Sam", "Raja", 25, "Gandhi Road", "Salem"));
''';
var code1 = '''
const student = {
  fullName: "Ram",
  father: "Sam",
  age: 12,
  address: "cherry road",
  city: "salem",
  about: function () {
    return `\${this.fullName} is from \${this.city}`;
  },
  eligibility: function () {
    return this.age >= 18;
  },
};

console.log(student);
console.log(student.about());''';
