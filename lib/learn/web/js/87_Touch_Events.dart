import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/js/topicName/jsTopics.dart';

class TouchEvents extends StatefulWidget {
  const TouchEvents({Key? key}) : super(key: key);

  @override
  State<TouchEvents> createState() => _TouchEventsState();
}

class _TouchEventsState extends State<TouchEvents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 87,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Touch Events'),
          const P(
              'Touch events are a type of event that can be triggered on touch-enabled devices, such as smartphones and tablets, using JavaScript. They allow web developers to respond to user interactions, such as tapping, swiping, and pinching, on touchscreens.'),
          const P(
              'There are several touch events available in JavaScript, including:'),
          const OLi(
              no: 1,
              'touchstart: This event is triggered when a finger or stylus is first placed on the touch screen.'),
          const OLi(
              no: 2,
              'touchmove: This event is triggered when a finger or stylus is moved across the touch screen.'),
          const OLi(
              no: 3,
              'touchend: This event is triggered when a finger or stylus is lifted off the touch screen.'),
          const OLi(
              no: 4,
              'touchcancel: This event is triggered if the touch event is cancelled, such as when the touch is interrupted by an incoming call or other system event.'),
          const H3('Source Code'),
          Code(title: 'index.html', code: code1, type: 'html'),
          Code(title: 'script.js', code: code2, type: 'javascript'),
          const H1('Example of Touch Events'),
          const H3('Source Code'),
          Code(title: 'index.html', code: code3, type: 'html'),
          Code(title: 'script.js', code: code4, type: 'javascript'),
        ],
      ),
    );
  }
}

var code4 = '''
const game = document.getElementById("game");
const ball = document.getElementById("ball");
let startX, startY;

game.addEventListener("touchstart", function (e) {
  const touch = e.changedTouches[0];
  startX = touch.clientX;
  startY = touch.clientY;
});

game.addEventListener("touchmove", function (e) {
  const touch = e.changedTouches[0];
  const diffX = touch.clientX - startX;
  const diffY = touch.clientY - startY;
  ball.style.left = Math.max(0, Math.min(350, ball.offsetLeft + diffX)) + "px";
  ball.style.top = Math.max(0, Math.min(180, ball.offsetTop + diffY)) + "px";
  startX = touch.clientX;
  startY = touch.clientY;
  e.preventDefault();
});
''';
var code3 = '''
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="icon" type="image/ico" href="logo.png" />
    <title>Document</title>
    <style>
      @import url("https://fonts.googleapis.com/css2?family=Lobster&family=Poppins:wght@100;200;300;400;500;600;700;800&display=swap");
      * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: "Poppins", sans-serif;
      }
      h3 {
        font-weight: 600;
        text-transform: uppercase;
      }
      #game {
        width: 400px;
        height: 200px;
        background-color: #ddd;
        position: relative;
      }
      #ball {
        width: 25px;
        height: 25px;
        background-color: red;
        border-radius: 25px;
        position: absolute;
        top: 75px;
        left: 75px;
      }
    </style>
  </head>
  <body>
    <h3>Simple Ball Game</h3>
    <div id="game">
      <div id="ball"></div>
    </div>
    <script src="95(4)1 Example of Touch Events.js"></script>
  </body>
</html>
''';
var code2 = '''
/*
  4.Touch
    touchstart  => mousedown in desktop
    touchmove   => move event
    touchend    => mouseup
    touchcancel => press the backmenu in mobile
*/

const touchArea = document.getElementById("touchArea");

// touchstart
touchArea.addEventListener("touchstart", function (e) {
  e.preventDefault();
  touchArea.style.backgroundColor = "blue";
  touchArea.textContent = "Touch Started !";
});

// touchmove
touchArea.addEventListener("touchmove", function (e) {
  e.preventDefault();
  touchArea.style.backgroundColor = "green";
  touchArea.textContent = "Touch Moved !";
});

// touchend
touchArea.addEventListener("touchend", function (e) {
  e.preventDefault();
  touchArea.style.backgroundColor = "gray";
  touchArea.textContent = "Touch Ended !";
});

// touchcancel
touchArea.addEventListener("touchcancel", function (e) {
  e.preventDefault();
  touchArea.style.backgroundColor = "red";
  touchArea.textContent = "Touch Cancelled !";
});
''';
var code1 = '''
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <style>
      @import url("https://fonts.googleapis.com/css2?family=Lobster&family=Poppins:wght@100;200;300;400;500;600;700;800&display=swap");
      * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: "Poppins", sans-serif;
      }
      h3 {
        font-weight: 600;
        text-transform: uppercase;
      }
      #touchArea {
        width: 400px;
        height: 200px;
        background-color: gray;
        text-align: center;
        color: white;
        line-height: 200px;
        font-size: 20px;
      }
    </style>
  </head>
  <body>
    <h3>Touch Events in JavaScript</h3>
    <div id="touchArea">Touch me!</div>

    <script src="95(4) Touch Events.js"></script>
  </body>
</html>
''';
