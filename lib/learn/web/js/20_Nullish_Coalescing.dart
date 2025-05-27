import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/JS/topicName/jsTopics.dart';

class Nullish extends StatefulWidget {
  const Nullish({Key? key}) : super(key: key);

  @override
  State<Nullish> createState() => _NullishState();
}

class _NullishState extends State<Nullish> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 20,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Nullish Coalescing operator'),
          const P(
              'Nullish Coalescing Operator is a relatively new addition to JavaScript, introduced in ECMAScript 2020 (ES11). It provides a concise way to handle default values when dealing with null or undefined values.'),
          const P(
              'The nullish coalescing operator is represented by ??, and it returns the right-hand operand when the left-hand operand is either null or undefined. Otherwise, it returns the left-hand operand.'),
          const H3('Syntax'),
          const P('   const result = leftOperand ?? rightOperand;'),
          Code(title: 'script.js', code: code, type: 'javascript')
        ],
      ),
    );
  }
}

var code = '''
// Nullish coalescing operator
const a = null ?? "No value";
console.log(a);

const b = 25 ?? 45;
console.log(b);

const c = null ?? 45;
console.log(c);

// Nullish coalescing assignment operator(??=)

user = { name: "sathish" };
console.log(user);
console.log(user.name);
console.log(user.city);

user.city ??= "Salem";
console.log(user.city);
console.log(user);
''';
