import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/JS/topicName/jsTopics.dart';

class CloneSetInterval extends StatefulWidget {
  const CloneSetInterval({Key? key}) : super(key: key);

  @override
  State<CloneSetInterval> createState() => _CloneSetIntervalState();
}

class _CloneSetIntervalState extends State<CloneSetInterval> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 82,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Style, innerText, innerHTML, CloneNode, setInterval'),
          const Li('Consider the html code'),
          Code(title: 'index.html', code: code1, type: 'html'),
          const H3('style'),
          Code(title: 'script.js', code: code2, type: 'javascript'),
          const H3('innerHTML'),
          Code(title: 'script.js', code: code3, type: 'javascript'),
          const H3('innerText'),
          Code(title: 'script.js', code: code4, type: 'javascript'),
          const H3('cloneNode'),
          Code(title: 'script.js', code: code5, type: 'javascript'),
          const H3('setInterval'),
          Code(title: 'script.js', code: code6, type: 'javascript'),
        ],
      ),
    );
  }
}

var code6 = '''
// setInterval()
let clockDiv = document.querySelector(".clock");
clockDiv.style.fontSize = "30px";
function clock() {
  const date = new Date();

  const time =
    date.getHours() +
    " : " +
    date.getMinutes() +
    " : " +
    date.getSeconds() +
    " : " +
    date.getMilliseconds();
  clockDiv.innerHTML = time;
}

setInterval(clock, 1000);
''';
var code5 = '''
// cloneNode()
const body = document.querySelector("body");
let cloneH1 = h1.cloneNode(true); //with Content
let cloneH2 = h1.cloneNode(false); //without Content
body.appendChild(cloneH1);
body.appendChild(cloneH2);
''';
var code4 = '''
// innerText
h1.innerText = "Learn More <i>Be Smart</i>";
''';
var code3 = '''
// innerHTML
h1.innerHTML = "Learn More <i>Be Smart</i>";
''';
var code2 = '''
// style
const h1 = document.querySelector("h1");
h1.style.color = "blue";
h1.style.backgroundColor = "palegreen";
h1.style.padding = "20px";
''';
var code1 = '''
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
  </head>
  <body>
    <h1>sathish Kumar</h1>
    <div class="clock"></div>
    <script src="../94(2) DOM APi.js"></script>
  </body>
</html>
''';
