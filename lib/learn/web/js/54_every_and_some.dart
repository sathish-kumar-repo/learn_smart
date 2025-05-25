import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/js/topicName/jsTopics.dart';

class every_and_some extends StatefulWidget {
  const every_and_some({Key? key}) : super(key: key);

  @override
  State<every_and_some> createState() => _every_and_someState();
}

class _every_and_someState extends State<every_and_some> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 54,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('every() & some()'),
          const Li(
              'In JavaScript, the every() and some() functions are used to perform a test on all elements of an array and return a Boolean value indicating whether all or some of the elements pass the test, respectively.'),
          const Li(
              'The every() function takes a callback function as an argument, which is called for each element in the array. The callback function is passed three arguments: the current element, the index of the current element, and the array itself. If the callback function returns true for every element in the array, the every() function returns true. If the callback function returns false for any element in the array, the every() function returns false.'),
          const Li(
              'The some() function also takes a callback function as an argument, and it also calls it for each element in the array. If the callback function returns true for any element in the array, the some() function returns true. If the callback function returns false'),
          const H3('Source Code'),
          Code(title: 'script.js', code: code1, type: 'javascript'),
          const H4('Ouput'),
          Code(title: 'terminal', code: code2, type: 'text')
        ],
      ),
    );
  }
}

var code2 = '''
All Elements are Even : true
All Elements are Even : true
checkEven All Elements are Even : true
Every Eligible : false
Some Eligible : true
''';
var code1 = '''
n = [12, 18, 10, 8];

// every()
let result = n.every((value) => {
  return value % 2 == 0;
});

console.log("All Elements are Even :", result);

// some()
result = n.some((value) => {
  return value % 2 == 0;
});

console.log("All Elements are Even :", result);

// Also possible
function checkEven(value) {
  return value % 2 == 0;
}

result = n.every(checkEven);

console.log("checkEven All Elements are Even :", result);

// ---------------------------------

const users = [
  { name: "Ram", age: 25 },
  { name: "Tiya", age: 45 },
  { name: "Raja", age: 18 },
  { name: "Sara", age: 12 },
];

function isEligible(element) {
  return element.age >= 18;
}

result = users.every(isEligible);
console.log("Every Eligible :", result);

result = users.some(isEligible);
console.log("Some Eligible :", result);  
''';
