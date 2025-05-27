import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/JS/topicName/jsTopics.dart';

class Looping_over extends StatefulWidget {
  const Looping_over({Key? key}) : super(key: key);

  @override
  State<Looping_over> createState() => _Looping_overState();
}

class _Looping_overState extends State<Looping_over> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 34,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Looping over objects by converting to an array'),
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
┌─────────┬───────────┐
│ (index) │  Values   │
├─────────┼───────────┤
│    0    │  'name'   │
│    1    │   'age'   │
│    2    │   'job'   │
│    3    │ 'contact' │
│    4    │  'city'   │
└─────────┴───────────┘
┌─────────┬──────────────┐
│ (index) │    Values    │
├─────────┼──────────────┤
│    0    │  'sathish'   │
│    1    │      17      │
│    2    │ 'developer'  │
│    3    │  1234567890  │
│    4    │ 'Coimbature' │
└─────────┴──────────────┘
name : sathish
sathish
age : 17
17
job : developer
developer
contact : 1234567890
1234567890
city : Coimbature
Coimbature
''';
var code1 = '''
user = {
  name: "sathish",
  age: 17,
  job: "developer",
  contact: 1234567890,
  city: "Coimbature",
};

let arr_keys = Object.keys(user);
console.table(arr_keys);

let arr_values = Object.values(user);
console.table(arr_values);

// print in normal for loop
for (let i = 0; i < arr_keys.length; i++) {
  console.log(arr_keys[i], ":", arr_values[i]);
  console.log(user[arr_keys[i]]);
}
''';
