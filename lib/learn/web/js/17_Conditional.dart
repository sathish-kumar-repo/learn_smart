import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/js/topicName/jsTopics.dart';

class Conditional extends StatefulWidget {
  const Conditional({Key? key}) : super(key: key);

  @override
  State<Conditional> createState() => _ConditionalState();
}

class _ConditionalState extends State<Conditional> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 17,
        topicsName: javaScriptTopics,
        img: 'js.png',
      ),
      body: MyPage(
        children: [
          const H1('Conditional Opertor'),
          const H2('Syntax'),
          const P('condition ? expression1 : expression2'),
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
Not Eligible
Welcome undefined
Welcome null
Welcome No name
Welcome No name
Welcome Sathish
{ name: 'sathish', age: 17 }
sathish
Hello sathish
''';
var code1 = '''
// conditional or ternary operator (?:)

const age = 15;
const result = age >= 18 ? "Eligible" : "Not Eligible";

console.log(result);

//this is used to handling null values

function welcome1(name) {
  console.log("Welcome " + name);
}

welcome1();
welcome1(null);

// this is used to also handle null value
function welcome(name) {
  const result = name ? name : "No name";
  console.log("Welcome " + result);
}

welcome();
welcome(null);
welcome("Sathish");

// In object type, handling the null value

users = { name: "sathish", age: 17 };
console.log(users);
console.log(users.name);

// Functions as Expression

const greetings = (user) => {
  const name = user.name ? user.name : "No name";
  return "Hello " + name;
};

console.log(greetings(users));
''';
