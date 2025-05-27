import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/JS/topicName/jsTopics.dart';

class Console_Work extends StatefulWidget {
  const Console_Work({Key? key}) : super(key: key);

  @override
  State<Console_Work> createState() => _Console_WorkState();
}

class _Console_WorkState extends State<Console_Work> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 3,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Console Work'),
          const P(
              'In javascript, the console is an object which provides access to the browser debugging console. We can open a console in web browser. The console object provides us with several different methods : '),
          const Li('log()'),
          const Li('error()'),
          const Li('warn()'),
          const Li('clear() '),
          const Li('time() and timeEnd() '),
          const Li('table()'),
          const Li('count()'),
          const Li('custom console logs'),
          Code(title: 'script.js', code: code, type: 'javascript')
        ],
      ),
    );
  }
}

var code = '''
// console.log is used to code check or debug(developer use panuvanga)

console.log("Hello world");
console.log(6 + 6);
console.log(123456);
console.log(true);
console.log(2 > 3);
console.log([2, 3, 4, 5, 6]);

// json value(object and value)
console.log({ fname: "sathish", age: 25 });
console.table({ fname: "sathish", age: 25 });

// To show error in console
console.error("Custom sample error");

// To show warn in console
console.warn("Warning");

// To clear the console
console.clear();

// Any name give (EG.."Timer")
console.time("Timer");
for (i = 0; i < 10000; i++) {
  console.log(i);
}
console.timeEnd("Timer");
''';
