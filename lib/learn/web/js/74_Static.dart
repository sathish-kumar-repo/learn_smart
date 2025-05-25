import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/js/topicName/jsTopics.dart';

class Static extends StatefulWidget {
  const Static({Key? key}) : super(key: key);

  @override
  State<Static> createState() => _StaticState();
}

class _StaticState extends State<Static> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 74,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Static Methods and Properties'),
          const P(
              'JavaScript is an object-oriented programming language that supports a variety of programming paradigms. One of the key features of object-oriented programming is the ability to define classes, which are templates for creating objects with shared behaviors and properties.In JavaScript, classes can contain static methods and properties, which are class-level functions and variables that are not associated with instances of the class.'),
          const H2('Defining and Accessing Static Methods and Properties'),
          const P(
              'Static methods and properties are defined using the static keyword before the method or property name. This tells JavaScript that the method or property should be associated with the class itself, rather than with instances of the class'),
          const Note('static is class level'),
          Code(title: 'script.js', code: code1, type: 'javascript'),
          const P(
              'we access the method and property directly on the class, without creating an instance of the class first.'),
          const H2('Use Cases for Static Methods and Properties'),
          const P(
              'Static methods and properties are useful when you need to define functionality or data that is shared among all instances of a class, or when you need to perform a task that is not specific to any particular instance of a class.'),
          const P(
              'For example, a utility class might contain a static method that performs a calculation or converts data between formats. A configuration class might contain a static property that stores global configuration settings.'),
          const P(
              'Static methods and properties can also be used to enforce constraints or rules that apply to all instances of a class. For example, a class that represents a set of mathematical functions might have a static property that specifies the maximum or minimum input value for all functions in the set.'),
          const H3('Example 1: Utility Class'),
          const P(
              'You can use a static class to create a collection of utility functions that can be used throughout your application. For example, let\'s say you have a MathUtils class that provides various math-related functions:'),
          Code(title: 'script.js', code: code2, type: 'javascript'),
          const P(
              'In this example, the MathUtils class provides four static methods for performing basic math operations. Because they are static methods, they can be called directly on the class without needing to create an instance of the class.'),
          const H3('Example 2: Singleton Pattern'),
          Code(title: 'script.js', code: code3, type: 'javascript'),
          const P(
              'In this example, the Database class has a static property called instance that is set to null by default. The getInstance() method checks if the instance property has been set and creates a new instance of the Database class if it hasn\'t. Once an instance has been created, the getInstance() method returns it. By doing this, we can ensure that only one instance of the Database class is created, even if we call getInstance() multiple times.'),
          const H3('Example 3: Constants'),
          Code(title: 'script.js', code: code1, type: 'javascript'),
          const P(
              'In this example, the Colors class defines three static properties that represent commonly used colors. By doing this, we can easily reference these colors throughout our code without needing to remember the hex values for each one.'),
          const P(
              'Static methods and properties can be a powerful tool for creating flexible and reusable code in JavaScript. By associating functions and variables with a class rather than with instances of the class, you can create functionality that is more modular and easier to maintain.')
        ],
      ),
    );
  }
}

var code4 = '''
class Colors {
  static RED = "#ff0000";
  static GREEN = "#00ff00";
  static BLUE = "#0000ff";
}

console.log(Colors.RED); // Output: #ff0000
console.log(Colors.GREEN); // Output: #00ff00
''';
var code3 = '''
// suppose you create one class , antha class la oru object tha create aaganum, antha object instances sa regular ra use panikita irukanum

class Database {
  static instance = null;

  static getInstance() {
    if (!Database.instance) {
      // if object instance is not  create
      Database.instance = new Database(); // intha database oda object references set aagidum
    }
    return Database.instance;
  }

  query(sql) {
    // code to execute SQL query
  }
}

const db1 = Database.getInstance();
const db2 = Database.getInstance();

console.log(db1 === db2); // Output: true
// In this example, the Database class has a static property called instance that is set to null by default. The getInstance() method checks if the instance property has been set and creates a new instance of the Database class if it hasn't. Once an instance has been created, the getInstance() method returns it. By doing this, we can ensure that only one instance of the Database class is created, even if we call getInstance() multiple times.
''';
var code2 = '''
class MathUtils {
  static add(a, b) {
    return a + b;
  }

  static subtract(a, b) {
    return a - b;
  }

  static multiply(a, b) {
    return a * b;
  }

  static divide(a, b) {
    return a / b;
  }
}

console.log(MathUtils.add(2, 3)); // Output: 5
console.log(MathUtils.multiply(4, 5)); // Output: 20
''';
var code1 = '''
class MyClass {
  static myStaticProperty = "Hello from a static property!";
  static myStaticMethod() {
    console.log("Hello from a static method!"); //static method
  }
}

MyClass.myStaticMethod(); // Output: Hello from a static method!
console.log(MyClass.myStaticProperty); // Output: Hello from a static property!
''';
