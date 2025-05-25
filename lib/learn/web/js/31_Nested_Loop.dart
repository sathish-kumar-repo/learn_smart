import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/js/topicName/jsTopics.dart';

class Nested extends StatefulWidget {
  const Nested({Key? key}) : super(key: key);

  @override
  State<Nested> createState() => _NestedState();
}

class _NestedState extends State<Nested> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 31,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Nested Loop'),
          const H3('Source Code'),
          Code(title: 'script.js', code: code, type: 'javascript')
        ],
      ),
    );
  }
}

var code2 = '''
[ [ 0, 1, 2 ], [ 0, 1, 2 ], [ 0, 1, 2 ] ]
┌─────────┬───┬───┬───┐
│ (index) │ 0 │ 1 │ 2 │
├─────────┼───┼───┼───┤
│    0    │ 0 │ 1 │ 2 │
│    1    │ 0 │ 1 │ 2 │
│    2    │ 0 │ 1 │ 2 │
└─────────┴───┴───┴───┘
''';
var code = '''
let nums = [];
for (let i = 0; i < 3; i++) {
  nums.push([]);
  for (let j = 0; j < 3; j++) {
    nums[i].push(j);
  }
}
console.log(nums);
console.table(nums);
''';
