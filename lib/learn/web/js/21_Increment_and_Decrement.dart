import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/JS/topicName/jsTopics.dart';

class Increment_and_Decrement extends StatefulWidget {
  const Increment_and_Decrement({Key? key}) : super(key: key);

  @override
  State<Increment_and_Decrement> createState() =>
      _Increment_and_DecrementState();
}

class _Increment_and_DecrementState extends State<Increment_and_Decrement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 21,
        topicsName: javaScriptTopics,
        img: 'js.png',
      ),
      body: MyPage(
        children: [
          const H1('Increment and Decrement Operator'),
          const P(
              'The increment (++) and decrement (--) operators in JavaScript are used to increase or decrease the value of a variable by 1, respectively. They are unary operators, meaning they work on a single operand. The increment (++) and decrement (--) operators can be used in two forms: postfix and prefix. The difference lies in when the increment or decrement operation takes place in relation to the variable.'),
          const H3('Postfix Increment / Decrement (x++ / x--)'),
          const Li(
              'The postfix increment (x++) and postfix decrement (x--) operators first return the original value of the variable and then increment or decrement the variable by 1.'),
          const H3('Prefix Increment / Decrement (++x / --x)'),
          const Li(
              'The prefix increment (++x) and prefix decrement (--x) operators first increment or decrement the variable by 1 and then return the updated value.'),
          Code(title: 'script.js', code: code, type: 'javascript')
        ],
      ),
    );
  }
}

var code = '''
// Increment Operator (++) and Decrement Operator

let a = 1;
a++;
console.log(a);

let b = 5;
b--;
console.log(b)

// Posfix Increment or Decrement=> variable ku pinnadi
// Prefix Increment or Decrement=> variable ku munnaadi
''';
