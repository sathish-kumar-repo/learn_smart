import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/js/topicName/jsTopics.dart';

class Type_Coercion extends StatefulWidget {
  const Type_Coercion({Key? key}) : super(key: key);

  @override
  State<Type_Coercion> createState() => _Type_CoercionState();
}

class _Type_CoercionState extends State<Type_Coercion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 7,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Type Coercion'),
          const H3('Source Code'),
          Code(title: 'script.js', code: code1, type: 'javascript'),
          const H4('Ouput'),
          Code(title: 'terminal', code: code2, type: 'text'),
          const Link(
              'https://www.tutorjoes.in/JS_tutorial/type_coercion_in_javascript'),
        ],
      ),
    );
  }
}

var code2 = '''
2510
35
''';
var code1 = '''
//Type Coercion

let a = "25";
let b = 10;
// Concatenation
console.log(a + b);

a = Number("25");
b = 10;

// Addition Work
console.log(a + b);
''';
