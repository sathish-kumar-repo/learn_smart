import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/js/topicName/jsTopics.dart';

class map extends StatefulWidget {
  const map({Key? key}) : super(key: key);

  @override
  State<map> createState() => _mapState();
}

class _mapState extends State<map> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 39,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('map'),
          const Li(
              'Creates a new array from calling a function for every array element.'),
          const Li('Calls a function once for each element in an array.'),
          const Li('Does not execute the function for empty elements.'),
          const Li('Does not change the original array.'),
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
┌─────────┬────────┐
│ (index) │ Values │
├─────────┼────────┤
│    0    │ '1.00' │
│    1    │ '1.41' │
│    2    │ '1.73' │
│    3    │ '2.00' │
│    4    │ '2.24' │
│    5    │ '2.45' │
│    6    │ '2.65' │
│    7    │ '2.83' │
│    8    │ '3.00' │
│    9    │ '3.16' │
└─────────┴────────┘
┌─────────┬───────────┬─────┬──────────────┬────────┐
│ (index) │   name    │ age │     city     │ salary │
├─────────┼───────────┼─────┼──────────────┼────────┤
│    0    │   'Sam'   │ 15  │  'Chennai'   │ 10500  │
│    1    │  'Ravi'   │ 22  │  'Namakkal'  │ 12000  │
│    2    │  'Joes'   │ 18  │   'Hosur'    │  6000  │
│    3    │ 'Aureen'  │ 47  │ 'Dharmapuri' │ 10000  │
│    4    │ 'Stanley' │ 10  │   'Salem'    │  8000  │
│    5    │   'Ram'   │ 12  │   'Salem'    │ 10000  │
└─────────┴───────────┴─────┴──────────────┴────────┘
┌─────────┬───────────┬─────┬──────────────┬────────┬────────────────┐
│ (index) │   name    │ age │     city     │ salary │     status     │
├─────────┼───────────┼─────┼──────────────┼────────┼────────────────┤
│    0    │   'Sam'   │ 15  │  'Chennai'   │ 10500  │ 'Not Eligible' │
│    1    │  'Ravi'   │ 22  │  'Namakkal'  │ 12000  │   'Eligible'   │
│    2    │  'Joes'   │ 18  │   'Hosur'    │  6000  │   'Eligible'   │
│    3    │ 'Aureen'  │ 47  │ 'Dharmapuri' │ 10000  │   'Eligible'   │
│    4    │ 'Stanley' │ 10  │   'Salem'    │  8000  │ 'Not Eligible' │
│    5    │   'Ram'   │ 12  │   'Salem'    │ 10000  │ 'Not Eligible' │
└─────────┴───────────┴─────┴──────────────┴────────┴────────────────┘
[
  {
    name: 'Sam',
    age: 15,
    city: 'Chennai',
    salary: 10500,
    status: 'Not Eligible'
  },
  {
    name: 'Ravi',
    age: 22,
    city: 'Namakkal',
    salary: 12000,
    status: 'Eligible'
  },
  {
    name: 'Joes',
    age: 18,
    city: 'Hosur',
    salary: 6000,
    status: 'Eligible'
  },
  {
    name: 'Aureen',
    age: 47,
    city: 'Dharmapuri',
    salary: 10000,
    status: 'Eligible'
  },
  {
    name: 'Stanley',
    age: 10,
    city: 'Salem',
    salary: 8000,
    status: 'Not Eligible'
  },
  {
    name: 'Ram',
    age: 12,
    city: 'Salem',
    salary: 10000,
    status: 'Not Eligible'
  }
]
''';
var code1 = '''
const numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

// map(value,index,array)
let sqrt = numbers.map((value) => {
  return Math.sqrt(value).toFixed(2);
});

// To return lst of squareroot values
console.table(sqrt);

const users = [
  { name: "Sam", age: 15, city: "Chennai", salary: 10500 },
  { name: "Ravi", age: 22, city: "Namakkal", salary: 12000 },
  { name: "Joes", age: 18, city: "Hosur", salary: 6000 },
  { name: "Aureen", age: 47, city: "Dharmapuri", salary: 10000 },
  { name: "Stanley", age: 10, city: "Salem", salary: 8000 },
  { name: "Ram", age: 12, city: "Salem", salary: 10000 },
];

console.table(users);

let eligible_status = users.map((user) => ({
  /*name:user.name,
  age:user.age,
  city:user.city,
  salary:user.salary,*/
  ...user, //spread operator
  status: user.age >= 18 ? "Eligible" : "Not Eligible",
}));

console.table(eligible_status);  
console.log(eligible_status);
''';
