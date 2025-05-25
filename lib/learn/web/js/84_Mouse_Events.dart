import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/js/topicName/jsTopics.dart';

class EventHandlersAndMouseEvents extends StatefulWidget {
  const EventHandlersAndMouseEvents({Key? key}) : super(key: key);

  @override
  State<EventHandlersAndMouseEvents> createState() =>
      _EventHandlersAndMouseEventsState();
}

class _EventHandlersAndMouseEventsState
    extends State<EventHandlersAndMouseEvents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 84,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Event Handlers'),
          const OLi(no: 1, 'Incline event Listeners'),
          const OLi(no: 2, 'Inline Properties'),
          const OLi(no: 3, 'Event Listeners'),
          const H2('Incline event Listeners'),
          const P(
              'Inline event listener written js code in attribute in HTM, it is applicable in single line code '),
          Code(title: 'index.html', code: codeA, type: 'html'),
          const H2('Inline Properties'),
          Code(title: 'index.html', code: codeB, type: 'html'),
          Code(title: 'script.js', code: codeC, type: 'javascript'),
          const H2('Event Listeners'),
          const P('For Eg: Mouse Event, Keyboard Event, etc.,'),
          const P('\n'),
          const H1('Mouse Events'),
          const P(
              'Mouse events in JavaScript are events that are triggered by mouse interactions on a web page. These events allow developers to capture and respond to user actions involving the mouse, such as clicking, moving, hovering, and dragging.'),
          const H3('click'),
          Code(title: 'index.html', code: code0, type: 'html'),
          Code(title: 'script.js', code: code1, type: 'javascript'),
          const H3('dblclick'),
          Code(title: 'index.html', code: code0, type: 'html'),
          Code(title: 'script.js', code: code2, type: 'javascript'),
          const H3('mousemove'),
          Code(title: 'index.html', code: code0, type: 'html'),
          Code(title: 'script.js', code: code3, type: 'javascript'),
          const H3('mouseover, mouseout'),
          Code(title: 'index.html', code: code0, type: 'html'),
          Code(title: 'script.js', code: code4, type: 'javascript'),
          const H3('mousedown, mouseup'),
          Code(title: 'index.html', code: code0, type: 'html'),
          Code(title: 'script.js', code: code5, type: 'javascript'),
          const H4('Source Code'),
          Code(title: 'index.html', code: code6, type: 'html'),
          Code(title: 'script.js', code: code7, type: 'javascript'),
        ],
      ),
    );
  }
}

var code7 = '''
const btn = document.querySelector(".btn");
/*
btn.addEventListener("click", function () {
  alert("Welcome to Tutor Joes");
});
*/

btn.addEventListener("dblclick", function () {
  alert("Your are dblclicked");
});

// if mousemove is work, then mouseover is not work
btn.addEventListener("mousemove", function () {
  this.style.backgroundColor = "purple";
});

btn.addEventListener("mouseup", function () {
  this.style.backgroundColor = "blue";
});

btn.addEventListener("mouseover", function () {
  this.style.backgroundColor = "orange";
});

btn.addEventListener("mousedown", function () {
  this.style.backgroundColor = "Red";
});

btn.addEventListener("mouseout", function () {
  this.style.backgroundColor = "yellow";
});
''';
var code6 = '''
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link rel="stylesheet" href="style.css" />
  </head>
  <body>
    <h3>Mouse Events</h3>
    <button class="btn">Event</button>
    <script src="95(1) Mouse Events.js"></script>
  </body>
</html>
''';
var code5 = '''
const btn = document.querySelector(".btn");

btn.addEventListener("mousedown", function () {
  this.style.backgroundColor = "Red";
});

btn.addEventListener("mouseout", function () {
  this.style.backgroundColor = "yellow";
});
''';
var code4 = '''
const btn = document.querySelector(".btn");

btn.addEventListener("mouseup", function () {
  this.style.backgroundColor = "blue";
});

btn.addEventListener("mouseover", function () {
  this.style.backgroundColor = "orange";
});
''';
var code3 = '''
const btn = document.querySelector(".btn");

// if mousemove is work, then mouseover is not work
btn.addEventListener("mousemove", function () {
  this.style.backgroundColor = "purple";
});
''';
var code2 = '''
const btn = document.querySelector(".btn");

btn.addEventListener("dblclick", function () {
  alert("Your are dblclicked");
});
''';
var code1 = '''
const btn = document.querySelector(".btn");

btn.addEventListener("click", function () {
  alert("Welcome to Tutor Joes");
});
''';
var code0 = '''
<button class="btn">Event</button>
''';

var codeC = '''
document.getElementById("btn").onclick = function () {
   alert("Welcome to Tutor Joes");
};
''';
var codeB = '''
<button id="btn">Inline properties</button>
''';
var codeA = '''
   <button onclick="alert('Welcome to Tutor Joes')">Inline event</button>
''';
