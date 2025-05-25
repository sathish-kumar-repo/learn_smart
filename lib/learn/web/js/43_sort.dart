import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/js/topicName/jsTopics.dart';

class sort extends StatefulWidget {
  const sort({Key? key}) : super(key: key);

  @override
  State<sort> createState() => _sortState();
}

class _sortState extends State<sort> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 43,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('sort'),
          const Li(
              'sorts the elements of an array. Mainly this method sorts the elements as strings in alphabetical and ascending order. And this function overwrites the original array.'),
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
Before Sort : Kumar,Aureen,Joes,Zara,Stanley
After Sort : Aureen,Joes,Kumar,Stanley,Zara
Before Sort : 10,100,25,150,45,80,9
After Sort : 10,100,150,25,45,80,9
Asc Compare Sort : 9,10,25,45,80,100,150
Desc Compare Sort : 150,100,80,45,25,10,9
┌─────────┬───────────┬─────┬──────────────┬────────┐
│ (index) │   name    │ age │     city     │ salary │
├─────────┼───────────┼─────┼──────────────┼────────┤
│    0    │   'Ram'   │ 12  │   'Salem'    │ 10000  │
│    1    │   'Sam'   │ 15  │  'Chennai'   │ 10500  │
│    2    │  'Ravi'   │ 22  │  'Namakkal'  │ 12000  │        
│    3    │  'Joes'   │ 18  │   'Hosur'    │  6000  │        
│    4    │ 'Aureen'  │ 47  │ 'Dharmapuri' │ 10000  │        
│    5    │ 'Stanley' │ 10  │   'Salem'    │  8000  │        
└─────────┴───────────┴─────┴──────────────┴────────┘        
┌─────────┬───────────┬─────┬──────────────┬────────┐        
│ (index) │   name    │ age │     city     │ salary │        
├─────────┼───────────┼─────┼──────────────┼────────┤        
│    0    │ 'Stanley' │ 10  │   'Salem'    │  8000  │        
│    1    │   'Ram'   │ 12  │   'Salem'    │ 10000  │        
│    2    │   'Sam'   │ 15  │  'Chennai'   │ 10500  │        
│    3    │  'Joes'   │ 18  │   'Hosur'    │  6000  │        
│    4    │  'Ravi'   │ 22  │  'Namakkal'  │ 12000  │        
│    5    │ 'Aureen'  │ 47  │ 'Dharmapuri' │ 10000  │        
└─────────┴───────────┴─────┴──────────────┴────────┘        
┌─────────┬───────────┬─────┬──────────────┬────────┐        
│ (index) │   name    │ age │     city     │ salary │        
├─────────┼───────────┼─────┼──────────────┼────────┤        
│    0    │ 'Aureen'  │ 47  │ 'Dharmapuri' │ 10000  │        
│    1    │  'Joes'   │ 18  │   'Hosur'    │  6000  │        
│    2    │   'Ram'   │ 12  │   'Salem'    │ 10000  │        
│    3    │  'Ravi'   │ 22  │  'Namakkal'  │ 12000  │        
│    4    │   'Sam'   │ 15  │  'Chennai'   │ 10500  │        
│    5    │ 'Stanley' │ 10  │   'Salem'    │  8000  │        
└─────────┴───────────┴─────┴──────────────┴────────┘ 
''';
var code1 = '''
const names = ["Kumar", "Aureen", "Joes", "Zara", "Stanley"];
console.log("Before Sort : " + names);
names.sort();
console.log("After Sort : " + names);

const num = [10, 100, 25, 150, 45, 80, 9];
console.log("Before Sort : " + num);
num.sort();
console.log("After Sort : " + num);

num.sort((a, b) => {
  //   console.log(a, b, a - b);
  return a - b;
});
console.log("Asc Compare Sort : " + num);

num.sort((a, b) => {
  return b - a;
});
console.log("Desc Compare Sort : " + num);

const users = [
  { name: "Ram", age: 12, city: "Salem", salary: 10000 },
  { name: "Sam", age: 15, city: "Chennai", salary: 10500 },
  { name: "Ravi", age: 22, city: "Namakkal", salary: 12000 },
  { name: "Joes", age: 18, city: "Hosur", salary: 6000 },
  { name: "Aureen", age: 47, city: "Dharmapuri", salary: 10000 },
  { name: "Stanley", age: 10, city: "Salem", salary: 8000 },
];
console.table(users);

users.sort((a, b) => {
  return a.age - b.age;
});
console.table(users);

users.sort((a, b) => {
  if (a.name > b.name) return 1;
  if (a.name < b.name) return -1;
  return 0;
});

console.table(users);    
''';
