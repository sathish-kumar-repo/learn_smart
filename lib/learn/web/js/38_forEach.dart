import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/js/topicName/jsTopics.dart';

class forEach extends StatefulWidget {
  const forEach({Key? key}) : super(key: key);

  @override
  State<forEach> createState() => _forEachState();
}

class _forEachState extends State<forEach> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 38,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('forEach'),
          const Li(
              'This method calls a function for each element in an array.'),
          const Li('This method is not executed for empty elements.'),
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
1
2
30
4
5
6
7
8
9
10
Index : 0 Value: 1
Index : 1 Value: 2
Index : 2 Value: 30
Index : 3 Value: 4
Index : 4 Value: 5
Index : 5 Value: 6
Index : 6 Value: 7
Index : 7 Value: 8
Index : 8 Value: 9
Index : 9 Value: 10
┌─────────┬───────────┬─────┬──────────────┬────────┐        
│ (index) │ full_name │ age │     city     │ salary │        
├─────────┼───────────┼─────┼──────────────┼────────┤        
│    0    │   'Ram'   │ 12  │   'Salem'    │ 10000  │        
│    1    │   'Sam'   │ 15  │  'Chennai'   │ 10500  │        
│    2    │  'Ravi'   │ 22  │  'Namakkal'  │ 12000  │        
│    3    │  'Joes'   │ 18  │   'Hosur'    │  6000  │        
│    4    │ 'Aureen'  │ 47  │ 'Dharmapuri' │ 10000  │        
│    5    │ 'Stanley' │ 10  │   'Salem'    │  8000  │        
└─────────┴───────────┴─────┴──────────────┴────────┘        
Ram
Sam
Ravi
Joes
Aureen
Stanley
''';
var code1 = '''
const number = [1, 2, 30, 4, 5, 6, 7, 8, 9, 10];

// value,index,array
number.forEach((value) => {
  console.log(value);
});

number.forEach((value, index) => {
  console.log("Index : " + index + " Value: " + value);
});

const users = [
  { full_name: "Ram", age: 12, city: "Salem", salary: 10000 },
  { full_name: "Sam", age: 15, city: "Chennai", salary: 10500 },
  { full_name: "Ravi", age: 22, city: "Namakkal", salary: 12000 },
  { full_name: "Joes", age: 18, city: "Hosur", salary: 6000 },
  { full_name: "Aureen", age: 47, city: "Dharmapuri", salary: 10000 },
  { full_name: "Stanley", age: 10, city: "Salem", salary: 8000 },
];

console.table(users);

users.forEach((value) => {
  console.log(value.full_name);
});
''';
