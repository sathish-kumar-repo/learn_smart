import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/js/topicName/jsTopics.dart';

class KeyboardEvents extends StatefulWidget {
  const KeyboardEvents({Key? key}) : super(key: key);

  @override
  State<KeyboardEvents> createState() => _KeyboardEventsState();
}

class _KeyboardEventsState extends State<KeyboardEvents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 85,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Keyboard Events'),
          const P(
              'Keyboard events in JavaScript are events that are triggered when a user interacts with the keyboard, such as pressing a key, releasing a key, or typing a key. These events allow web developers to capture and respond to user input from the keyboard in web applications.'),
          const H3('Keydown'),
          Code(title: 'index.html', code: code1, type: 'html'),
          Code(title: 'script.js', code: code2, type: 'javascript'),
          const H3('keypress (deprecated)'),
          Code(title: 'index.html', code: code1, type: 'html'),
          Code(title: 'script.js', code: code3, type: 'javascript'),
          const H3('keyup'),
          Code(title: 'script.js', code: code4, type: 'javascript'),
          const H3('key'),
          Code(title: 'script.js', code: code5, type: 'javascript'),
          const H3('code'),
          const P(
              'The "code" property may refer to a custom property that has been added to a DOM element by a developer using their own JavaScript code. In JavaScript, it\'s possible to add custom properties to DOM elements or any other JavaScript objects by simply assigning a value to a property that doesn\'t already exist on the object.'),
          Code(title: 'script.js', code: code6, type: 'javascript'),
          const H4('Source Code'),
          Code(title: 'index.html', code: code7, type: 'html'),
          Code(title: 'script.js', code: code8, type: 'javascript'),
        ],
      ),
    );
  }
}

var code8 = '''
/*
  2.Keyboard
    Keydown
    keypress (deprecated)
    keyup
    key
    code
  */

document.addEventListener("keydown", handleKeyEvent); //first trigger
document.addEventListener("keypress", handleKeyEvent);
document.addEventListener("keyup", handleKeyEvent);

// Event da parameter aa pass pannanum
function handleKeyEvent(event) {
  const eventType = event.type;
  const keyCode = event.code;
  const keyName = event.key;
  console.log(`Event type: \${eventType}`);
  console.log(`Key code: \${keyCode}`);
  console.log(`Key name: \${keyName}`);
}

//-----------------------------------------------------------

const input = document.getElementById("input-num");
const msg = document.getElementById("error");

input.addEventListener("keydown", function (event) {
  const key = event.key;
  console.log(key);
  if (isNaN(key)) {
    event.preventDefault();
    msg.textContent = "Please Enter Number only";
  } else {
    msg.textContent = "";
  }
});

//-----------------------------------------------------------
''';
var code7 = '''
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
  </head>
  <body>
    <h1>Keyboard Event in JavaScript</h1>
    <p>Press Any Key</p>
    <hr />
    <label for="input-num">Enter a Number</label>
    <input type="text" id="input-num" />
    <p id="error"></p>

    <script src="95(2) Keyboard Events.js"></script>
  </body>
</html>
''';
var code6 = '''
document.addEventListener("keyup", handleKeyEvent);

function handleKeyEvent(event) {
  const keyCode = event.code;
  console.log(`Key code: \${keyCode}`);
}
''';
var code5 = '''
document.addEventListener("keyup", handleKeyEvent);

function handleKeyEvent(event) {
  const keyName = event.key;
  console.log(`Key name: \${keyName}`);
}
''';
var code4 = '''
document.addEventListener("keyup", handleKeyEvent);

function handleKeyEvent(event) {
  const eventType = event.type;
  console.log(`Event type: \${eventType}`);
}
''';
var code3 = '''
const input = document.getElementById("input-num");
const msg = document.getElementById("error");

input.addEventListener("keypress", function (event) {
  const key = event.key;
  console.log(key);
  if (isNaN(key)) {
    event.preventDefault();
    msg.textContent = "Please Enter Number only";
  } else {
    msg.textContent = "";
  }
});
''';
var code2 = '''
document.addEventListener("keydown", handleKeyEvent); //first trigger

function handleKeyEvent(event) {
  const eventType = event.type;
  console.log(`Event type: \${eventType}`);
}
''';
var code1 = '''
<label for="input-num">Enter a Number</label>
<input type="text" id="input-num" />
 ''';
