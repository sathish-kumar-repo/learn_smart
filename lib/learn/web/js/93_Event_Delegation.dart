import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/js/topicName/jsTopics.dart';

class EventDelegation extends StatefulWidget {
  const EventDelegation({Key? key}) : super(key: key);

  @override
  State<EventDelegation> createState() => _EventDelegationState();
}

class _EventDelegationState extends State<EventDelegation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 93,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1(
              'Event Delegation in JavaScript: Efficient Event Handling for Dynamic Elements'),
          const P(
              'Event delegation is a technique in JavaScript that allows you to handle events on parent elements rather than directly attaching event listeners to individual child elements. With event delegation, you can efficiently manage events for dynamically added or removed elements within a container.'),
          const P(
              'The concept behind event delegation is based on event propagation, which includes two phases: capturing and bubbling. When an event occurs on a DOM element, it first goes through the capturing phase, where the event is triggered on the parent elements starting from the top of the DOM hierarchy and moving towards the target element. After the capturing phase, the event enters the bubbling phase, where it triggers on the target element and then propagates up through the parent elements'),
          const P(
              'Event delegation takes advantage of event bubbling. Instead of attaching an event listener to each individual child element, you attach a single event listener to the parent element. When an event occurs on a child element, it bubbles up to the parent element and triggers the event listener attached to the parent. The parent element then determines which child element triggered the event by inspecting the event.target property.'),
          const P('The main advantages of event delegation are:'),
          const OLi(
              no: 1,
              'Efficiency: With event delegation, you can handle events for a large number of elements efficiently, as you only need to attach a single event listener on the parent element rather than multiple listeners on each child element. This is especially useful when dealing with dynamically added or removed elements.'),
          const OLi(
              no: 2,
              'Dynamic Element Handling: Event delegation allows you to handle events on dynamically added or removed elements without the need to attach and detach event listeners manually. The parent element remains constant, so it can handle events even for elements that are added or removed dynamically.'),
          const OLi(
              no: 3,
              'implified Code: By using event delegation, you can write cleaner and more concise code by avoiding the need to attach event listeners to each individual element. This leads to better code maintainability and reduces the chances of memory leaks due to forgotten or orphaned event listeners.'),
          const H3('Example - 1'),
          const Li('E - Commerce Website (Product Selection)'),
          Code(title: 'index.html', code: code1, type: 'html'),
          Code(title: 'style.css', code: code2, type: 'css'),
          Code(title: 'script.js', code: code3, type: 'javascript'),
          const H3('Example - 2'),
          const Li('Form Element Dynamic Changes'),
          Code(title: 'index.html', code: code4, type: 'html'),
          Code(title: 'style.css', code: code5, type: 'css'),
          Code(title: 'script.js', code: code6, type: 'javascript'),
          const P(
              'To implement event delegation, you attach an event listener to the parent element and use conditional statements to determine which child element triggered the event based on the event.target. You can then perform the desired actions or event handling logic accordingly'),
          const P(
              'Event delegation is commonly used in scenarios where you have a list or a container with multiple elements that require similar event handling, such as a dynamic list of items, a table, or a menu. It provides a scalable and efficient approach to handling events in these situations.'),
        ],
      ),
    );
  }
}

var code6 = '''
const frm = document.getElementById("frm");

frm.addEventListener("keyup", (e) => {
  if (e.target.dataset.uppercase != undefined) {
    e.target.value = e.target.value.toUpperCase();
  }
});
''';
var code5 = '''
@import url("https://fonts.googleapis.com/css2?family=Lobster&family=Poppins:wght@100;200;300;400;500;600;700;800&display=swap");

* {
  font-family: "Poppins", sans-serif;
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body {
  width: 100vw;
  height: 100vh;
  display: grid;
  place-items: center;
  background-color: aliceblue;
}

#frm {
  width: 650px;
  background-color: #fff;
  padding: 10px;
  display: flex;
  flex-direction: column;
  gap: 10px;
}

.form-group {
  display: flex;
  flex-direction: column;
  margin-bottom: 10px;
}

.form-group label {
  margin-bottom: 5px;
}

.form-group input {
  border: 1px solid #ccc;
  padding: 5px 10px;
  border-radius: 3px;
  outline: none;
}
''';
var code4 = '''
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link rel="stylesheet" href="107(1)_style.css" />
  </head>
  <body>
    <form action="#" id="frm">
      <div class="form-group">
        <label for="firstName">First Name</label>
        <input type="text" placeholder="Enter First Name" data-uppercase />
      </div>
      <div class="form-group">
        <label for="lastName">Last Name</label>
        <input type="text" placeholder="Enter Last Name" data-uppercase />
      </div>
    </form>
    <script src="107(1)_delegation.js"></script>
  </body>
</html>
''';
var code3 = '''
const catagories = document.getElementById("categories");

catagories.addEventListener("click", function (e) {
  //console.log(e.target);
  if (e.target.className == "product") {
    //console.log(e.target.id);
    window.location.href = "/" + e.target.id;
  }
});
''';
var code2 = '''
@import url("https://fonts.googleapis.com/css2?family=Lobster&family=Poppins:wght@100;200;300;400;500;600;700;800&display=swap");

* {
  font-family: "Poppins", sans-serif;
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body {
  width: 100vw;
  height: 100vh;
  display: grid;
  place-items: center;
}

.container {
  width: 650px;
  background-color: #333;
  padding: 10px;
}

h3 {
  font-weight: 300;
  font-size: 25px;
  margin: 10px 5px;
  color: #fff;
  text-align: center;
}

#categories {
  display: flex;
  flex-wrap: wrap;
  gap: 10px;
}

.product {
  width: 150px;
  height: 150px;
  background-color: palegreen;
  text-align: center;
  line-height: 150px;
  color: brown;
  font-weight: 400;
  font-size: 18px;
  cursor: pointer;
}
''';
var code1 = '''
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Event Delegation</title>
    <link rel="stylesheet" href="107_style.css" />
  </head>
  <body>
    <div class="container">
      <h3>Event Delegation in JavaScript</h3>
      <div id="categories">
        <div class="product" id="Laptops">Laptops</div>
        <div class="product" id="cameras">Cameras</div>
        <div class="product" id="printer">Printer</div>
        <div class="product" id="tv">TV</div>
        <div class="product" id="ac">AC</div>
        <div class="product" id="mobiles">Mobiles</div>
      </div>
    </div>
    <script src="107_delegation.js"></script>
  </body>
</html>
''';
