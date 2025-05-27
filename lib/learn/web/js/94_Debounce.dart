import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/JS/topicName/jsTopics.dart';

class DebounceJs extends StatefulWidget {
  const DebounceJs({Key? key}) : super(key: key);

  @override
  State<DebounceJs> createState() => _DebounceJsState();
}

class _DebounceJsState extends State<DebounceJs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 94,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Debouncing Method'),
          const P(
              'In JavaScript, a debounce function makes sure that your code is only triggered once per user input. Search box suggestions, text-field auto-saves, and eliminating double-button clicks are all use cases for debounce.'),
          const P(
              'Debouncing in JavaScript is a practice used to improve browser performance. There might be some functionality in a web page that requires time-consuming computations. If such a method is invoked frequently, it might greatly affect the performance of the browser, as JavaScript is a single-threaded language.'),
          const P(
              'A Debounce function is a higher-order function that returns another function, to create closure around the function parameters (func, timeout) and the timer variable.'),
          const OLi(
              no: 1,
              'func: is a function that you want to execute after the debounce time'),
          const OLi(
              no: 2,
              'timeout: The amount of time you want the debounce function to wait after the last received action before executing func.'),
          const OLi(
              no: 3, 'timer: The value used to indicate a running debounce.'),
          const H3('Source Code'),
          Code(title: 'index.html', code: code1, type: 'html'),
          Code(title: 'script.js', code: code2, type: 'javascript'),
        ],
      ),
    );
  }
}

var code2 = '''
const txtInput = document.getElementById("txtInput");

txtInput.addEventListener("keyup", function () {
  optimizeFunction();
});

// To count the API Call
let counter = 0;

const getDataFromApi = () => {
  console.log("Getting Data....", counter++);
};

const debounceMethod = function (fn, delay) {
  let timer;
  return function () {
    clearTimeout(timer);
    timer = setTimeout(() => {
      fn.apply(this, arguments);
      //   console.log(this);
      //   console.log(arguments);
      //   fn();
    }, delay);
  };
};

const optimizeFunction = debounceMethod(getDataFromApi, 300);
''';
var code1 = '''
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Debouncing in Javascript</title>
  </head>
  <body>
    <h5>Debouncing in Javascript</h5>
    <input type="text" id="txtInput" />
    <script src="105_Debounce.js"></script>
  </body>
</html>
''';
