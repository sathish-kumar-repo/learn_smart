import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/js/topicName/jsTopics.dart';

class EventBubblingEventCapturing extends StatefulWidget {
  const EventBubblingEventCapturing({Key? key}) : super(key: key);

  @override
  State<EventBubblingEventCapturing> createState() =>
      _EventBubblingEventCapturingState();
}

class _EventBubblingEventCapturingState
    extends State<EventBubblingEventCapturing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 92,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1(
              'Event Bubbling in JavaScript: Understanding Event Propagation'),
          const P(
              'Event bubbling is a mechanism in JavaScript where an event triggered on an element is propagated or "bubbles up" through its parent elements in the DOM hierarchy. It follows the natural hierarchy of the DOM, starting from the target element and moving up towards the topmost parent element.'),
          const P(
              'When an event is triggered on an element, such as a click event, it goes through two phases: capturing and bubbling. In the capturing phase, the event starts from the topmost parent element (usually the <html> element) and traverses down to the target element. After the capturing phase, the event enters the bubbling phase, where it triggers on the target element and then propagates up through its parent elements.'),
          const P(
              'During the bubbling phase, the event triggers on each parent element in the DOM hierarchy, which means that you can also attach event listeners to the parent or any ancestor elements to listen for the same event.'),
          const P(
              'Event bubbling is the default behavior in most modern browsers, and it allows for convenient event handling. It enables you to listen for events on a parent element and handle events from multiple child elements within it. This approach is particularly useful when you have a list or a group of elements where you want to apply the same event handling logic without attaching individual event listeners to each child element.'),
          const P(
              'Event delegation, as explained earlier, takes advantage of event bubbling by attaching an event listener to a parent element and utilizing the bubbling phase to handle events on its child elements.'),
          const H2('Explanation'),
          const Li('Consider the HTML Code'),
          Code(title: 'index.htl', code: code0, type: 'html'),
          const H3('Event Bubbling'),
          const Li('By Default => Event Bubbling (Upwards)'),
          Code(title: 'script.js', code: code1, type: 'javascript'),
          Code(title: 'script.js', code: code2, type: 'javascript'),
          const H3('Event Capturing'),
          const Li('Event Capturing (Downwards)'),
          Code(title: 'script.js', code: code3, type: 'javascript'),
          const H3('Combination of true and false'),
          const Li('First work Capturing and Last work Bubbling'),
          Code(title: 'script.js', code: code4, type: 'javascript'),
          const H3('stopPropagation()'),
          const Li(
              'Consider Code is Bubbling, Suppose I Clicked child, then only child event is execute not others like parent, grandparent'),
          Code(title: 'script.js', code: code5, type: 'javascript'),
          const Li('Same Concept apply in Combination of true and false'),
          const H4('without use stopPropagation()'),
          Code(title: 'script.js', code: code6, type: 'javascript'),
          const H4('with use stopPropagation()'),
          Code(title: 'script.js', code: code7, type: 'javascript'),
          const H3('stopImmediatePropagation()'),
          const Li(
              'Execute Only one event in element(child) if more no. of event present in that element(child)'),
          const Li('without use stopImmediatePropagation()'),
          Code(title: 'script.js', code: code8, type: 'javascript'),
          const Li('with use stopImmediatePropagation()'),
          Code(title: 'script.js', code: code9, type: 'javascript'),
          const H2('Real Time Eg'),
          const Li('Modal Concept'),
          Code(title: 'index.html', code: code10, type: 'html'),
          Code(title: 'style.css', code: code11, type: 'css'),
          Code(title: 'script.js', code: code12, type: 'javascript')
        ],
      ),
    );
  }
}

var code12 = '''
const btnModal = document.querySelector("#btnModal");
const modal = document.querySelector("#modal");
const btnSubmit = document.querySelector("#btnSubmit");
const txtName = document.querySelector("#txtName");

btnModal.addEventListener("click", function () {
  modal.style.display = "flex";
});
modal.addEventListener("click", function () {
  modal.style.display = "none";
});

btnSubmit.addEventListener("click", function (e) {
  e.stopPropagation();
  console.log("Submit button Pressed");
});
txtName.addEventListener("click", function (e) {
  e.stopPropagation();
  console.log("Input Click");
});
''';
var code11 = '''
@import url("https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700;900&display=swap");
* {
  font-family: "Poppins", sans-serif;
}

#modal {
  position: fixed;
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, 0.5);
  top: 0;
  left: 0;
  display: none;
  align-items: center;
  justify-content: center;
}
#modalContent {
  background-color: white;
  padding: 20px;
  border-radius: 5px;
}
#modalContent h2 {
  font-weight: 600;
}
''';
var code10 = '''
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Modal</title>
    <link rel="stylesheet" href="106(1)_style.css" />
  </head>
  <body>
    <button id="btnModal">Open Modal</button>
    <div id="modal">
      <div id="modalContent">
        <h2>Modal Heading</h2>
        <p>This is a modal window example.</p>
        <input type="text" id="txtName" placeholder="name" />
        <button id="btnSubmit">Submit</button>
      </div>
    </div>

    <script src="106(1)_ModalConcept.js"></script>
  </body>
</html>
''';
var code9 = '''
grandparent.addEventListener(
  "click",
  function () {
    console.log("Grandparent Clicked");
  },
  true
);

parent.addEventListener(
  "click",
  function () {
    console.log("Parent Clicked");
  },
  false
);

child.addEventListener(
  "click",
  function (e) {
    console.log("Child Clicked");
    e.stopImmediatePropagation();
  },
  true
);

child.addEventListener(
  "click",
  function (e) {
    console.log("Child Clicked 2");
    e.stopPropagation();
  },
  true
);
"""
Grandparent Clicked 
Child Clicked
"""
''';
var code8 = '''
grandparent.addEventListener(
  "click",
  function () {
    console.log("Grandparent Clicked");
  },
  true
);

parent.addEventListener(
  "click",
  function () {
    console.log("Parent Clicked");
  },
  false
);

child.addEventListener(
  "click",
  function (e) {
    console.log("Child Clicked");
    e.stopPropagation();
  },
  true
);

child.addEventListener(
  "click",
  function (e) {
    console.log("Child Clicked 2");
    e.stopPropagation();
  },
  true
);
"""
Grandparent Clicked 
Child Clicked 
Child Clicked 2
"""
''';
var code7 = '''
grandparent.addEventListener(
  "click",
  function () {
    console.log("Grandparent Clicked");
  },
  true
);

parent.addEventListener(
  "click",
  function () {
    console.log("Parent Clicked");
  },
  false
);

child.addEventListener(
  "click",
  function (e) {
    console.log("Child Clicked");
    e.stopPropagation();
  },
  true
);
"""
Grandparent Clicked 
Child Clicked
"""
''';
var code6 = '''
grandparent.addEventListener(
  "click",
  function () {
    console.log("Grandparent Clicked");
  },
  true
);

parent.addEventListener(
  "click",
  function () {
    console.log("Parent Clicked");
  },
  false
);

child.addEventListener(
  "click",
  function (e) {
    console.log("Child Clicked");
    // e.stopPropagation();
  },
  true
);
"""
Grandparent Clicked 
Child Clicked
Parent Clicked
"""
''';
var code5 = '''
grandparent.addEventListener(
  "click",
  function () {
    console.log("Grandparent Clicked");
  },
  false
);

parent.addEventListener(
  "click",
  function () {
    console.log("Parent Clicked");
  },
  false
);

child.addEventListener(
  "click",
  function (e) {
    console.log("Child Clicked");
    e.stopPropagation();
  },
  false
);
"""
Child Clicked
"""
''';
var code4 = '''
grandparent.addEventListener(
  "click",
  function () {
    console.log("Grandparent Clicked");
  },
  true
);

parent.addEventListener(
  "click",
  function () {
    console.log("Parent Clicked");
  },
  false
);

child.addEventListener(
  "click",
  function (e) {
    console.log("Child Clicked");
  },
  true
);
"""
Grandparent Clicked 
Child Clicked 
Parent Clicked
"""
''';
var code3 = '''
grandparent.addEventListener(
  "click",
  function () {
    console.log("Grandparent Clicked");
  },
  true
);

parent.addEventListener(
  "click",
  function () {
    console.log("Parent Clicked");
  },
  true
);

child.addEventListener(
  "click",
  function (e) {
    console.log("Child Clicked");
  },
  true
);
"""
Grandparent Clicked 
Parent Clicked
Child Clicked
"""
''';
var code2 = '''
const grandparent = document.querySelector("#grandparent");
const parent = document.querySelector("#parent");
const child = document.querySelector("#child");

// By Default => Event Bubbling (Upwards)

grandparent.addEventListener(
  "click",
  function () {
    console.log("Grandparent Clicked");
  },
  false
);

parent.addEventListener(
  "click",
  function () {
    console.log("Parent Clicked");
  },
  false
);

child.addEventListener(
  "click",
  function () {
    console.log("Child Clicked");
  },
  false
);
"""
Child Clicked 
Parent Clicked 
Grandparent Clicked
"""
''';
var code1 = '''
const grandparent = document.querySelector("#grandparent");
const parent = document.querySelector("#parent");
const child = document.querySelector("#child");

// By Default => Event Bubbling (Upwards)

grandparent.addEventListener("click", function () {
  console.log("Grandparent Clicked");
});

parent.addEventListener("click", function () {
  console.log("Parent Clicked");
});

child.addEventListener("click", function () {
  console.log("Child Clicked");
});
"""
Child Clicked 
Parent Clicked 
Grandparent Clicked
"""
''';
var code0 = '''
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <title>Document</title>
    <style>
      div {
        padding: 30px;
        margin: 10px;
        border: 3px solid #333;
        text-align: center;
      }
    </style>
  </head>
  <body>
    <h3>Event bubbling | Event Capturing</h3>
    <div id="grandparent">
      grandparent
      <div id="parent">
        parent
        <div id="child">child</div>
      </div>
    </div>
    <script src="106_EventBubblingAndEventCapturing.js"></script>
  </body>
</html>
''';
