import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/JS/topicName/jsTopics.dart';

class Nested_if extends StatefulWidget {
  const Nested_if({Key? key}) : super(key: key);

  @override
  State<Nested_if> createState() => _Nested_ifState();
}

class _Nested_ifState extends State<Nested_if> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 25,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Nested if Statement'),
          const H3('Source Code'),
          Code(title: 'script.js', code: code, type: 'javascript')
        ],
      ),
    );
  }
}

var code = '''//Nested If Statement
/*
if(cond)
{
  if(cond)
  {
    ---
  }
}

min mark >=35
  91-100 A
  81-90 B
  71-80 C
  D
*/

let english = 95,
  tamil = 98,
  maths = 75;
let total, avg;
total = english + tamil + maths;
avg = total / 3;
console.log("Total   : " + total);
console.log("Average : " + avg.toFixed(2));

if (english >= 35 && tamil >= 35 && maths >= 35) {
  console.log("Result  : Pass");
  if (avg > 90 && avg <= 100) {
    console.log("Grade   : A Grade");
  } else if (avg > 80 && avg <= 90) {
    console.log("Grade   : B Grade");
  } else if (avg > 70 && avg <= 80) {
    console.log("Grade   : C Grade");
  } else {
    console.log("Grade   : D Grade");
  }
} else {
  console.log("Result  : Fail");
  console.log("Grade   : No Grade");
}
''';
