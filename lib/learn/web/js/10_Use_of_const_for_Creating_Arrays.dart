import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/JS/topicName/jsTopics.dart';

class Use_of_const_for_Creating_Arrays extends StatefulWidget {
  const Use_of_const_for_Creating_Arrays({Key? key}) : super(key: key);

  @override
  State<Use_of_const_for_Creating_Arrays> createState() =>
      _Use_of_const_for_Creating_ArraysState();
}

class _Use_of_const_for_Creating_ArraysState
    extends State<Use_of_const_for_Creating_Arrays> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 10,
        topicsName: javaScriptTopics,
        img: 'js.png',
      ),
      body: MyPage(
        children: [
          const H1('Use of const for Creating Arrays'),
          const P(
              'JavaScript offers several ways to declare variables, including var, let, and const. Each keyword has its own unique behavior and use cases. In this blog post, we will focus on the use of const for creating arrays in JavaScript. '),
          const P(
              'The const keyword ensures that the variable users cannot be reassigned to a new value. For example, you cannot do users = ["John", "Doe"]; which would throw an error.'),
          const H3('Source Code'),
          Code(title: 'script.js', code: code1, type: 'javascript'),
          const H4('Ouput'),
          Code(title: 'terminal', code: code2, type: 'text'),
          const P(
              'However, the const keyword does not prevent modifications to the array elements themselves. The array is an object in JavaScript, and the elements inside the array are properties of that object. Therefore, you can still perform operations on the array elements, such as pushing new elements to the array, changing the value of an element, or using the splice method to remove elements.'),
          const P(
              'In the code you\'ve provided, the users.push("Tiya") method is used to add a new element "Tiya" to the end of the array. This is a valid operation and the element is added to the array. The console.log(users) statement then logs the updated array to the console, which now has 4 elements ["Ram","Sam","Ravi","Tiya"].'),
          const P(
              'Using the const keyword to declare an array in JavaScript has the following benefits:'),
          const Li(
              'It prevents the variable from being reassigned to a new value. This can be useful for maintaining the integrity of your data and ensuring that unexpected reassignments do not occur in your code.'),
          const Li(
              'It makes it clear to other developers that the array is meant to be constant and should not be reassigned.'),
          const Li(
              'It allows the elements inside the array to be modified. For example, you can still push elements to an array, change the value of an element, or use the splice method to remove elements even if the array is declared using const.'),
          const P(
              'It\'s worth noting that, while the const keyword is generally recommended for arrays that should not be reassigned, let keyword can also be used in situations where you want to allow the array to be reassigned but still want to prevent modification to the elements inside the array.'),
          const P(
              'In summary, using const keyword to create an array is a good practice to ensure that the array is not reassigned and it makes clear to other developers that this array is meant to be a constant.'),
        ],
      ),
    );
  }
}

var code2 = '''
10
[ 'Ram', 'Sam', 'Ravi', 'Tiya' ]
''';
var code1 = '''
const a = 10;
console.log(a);
// a = 25;
// it is error because it is primitive type and also declare in const keyword


// but is possible to array type
// declare the array in const and also change the variable in existing array but not allow new array in same variable
const users = ["Ram", "Sam", "Ravi"];
users.push("Tiya");
console.log(users);

// above code is execute properly and also no error
// reason: value only add in array and stored in heap memory, it is not change the references (memory address) but it is not allow reassign but modify the variable inside in array
''';
