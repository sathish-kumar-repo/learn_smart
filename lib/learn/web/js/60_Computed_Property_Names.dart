import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/JS/topicName/jsTopics.dart';

class Computed_Property_Names extends StatefulWidget {
  const Computed_Property_Names({Key? key}) : super(key: key);

  @override
  State<Computed_Property_Names> createState() =>
      _Computed_Property_NamesState();
}

class _Computed_Property_NamesState extends State<Computed_Property_Names> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 60,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Computed Property Names'),
          const P(
              'JavaScript objects are a powerful data structure that allows developers to store and manipulate data in a flexible and organized manner. One of the most powerful features of JavaScript objects is the ability to create properties with computed property names.'),
          const P(
              'Computed property names allow developers to define the name of an object property at runtime, rather than at the time of object creation. This means that the property name can be determined based on the value of a variable or the result of an expression.'),
          const P(
              'Computed property names can also be used in conjunction with destructuring assignment to extract values from an object. For example, the following code uses computed property names to extract the value of the "name" property from the user object:'),
          const H3('For Example'),
          const H3('Source Code'),
          Code(title: 'script.js', code: code1, type: 'javascript'),
          const H4('Ouput'),
          Code(title: 'terminal', code: code2, type: 'text'),
          const P(
              'Computed property names are a powerful feature of JavaScript objects that allow for more dynamic and flexible code. They can be used to create properties with dynamic names, extract values from objects, and improve code readability.'),
        ],
      ),
    );
  }
}

var code2 = '''
In ES5 { name: 'sathish' }
In ES6 { name: 'sathish' }
{ name: 'Sathish', age: 35 }
Sathish
''';
var code1 = '''
// In ES5
function objectify1(key, val) {
  let obj = {};
  obj[key] = val;
  return obj;
}
console.log("In ES5", objectify1("name", "sathish"));

// In ES6
function objectify2(key, val) {
  return {
    [key]: val,
  };
}
console.log("In ES6", objectify2("name", "sathish"));

// -------------------------------------

// Destructuring assignment
const key1 = "name";
const key2 = "age";
const value1 = "Sathish";
const value2 = 35;
const user = {
  [key1]: value1,
  [key2]: value2,
};
console.log(user);

const { [key1]: pname } = user;
console.log(pname);
''';
