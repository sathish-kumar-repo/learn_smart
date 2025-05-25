import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/js/topicName/jsTopics.dart';

class ClassList extends StatefulWidget {
  const ClassList({Key? key}) : super(key: key);

  @override
  State<ClassList> createState() => _ClassListState();
}

class _ClassListState extends State<ClassList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 83,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1(
              'Managing HTML Element Attributes with ClassList and Attribute Methods'),
          const Li('Consider the html code'),
          Code(title: 'index.html', code: code1, type: 'html'),
          const H2('classList'),
          const P(
              'The classList property returns a DOMTokenList object, which represents the class attribute of an element as a collection of space-separated tokens. You can use the methods of this object to manipulate the classes of the element.Here are some common methods of the classList object'),
          const H3('Adding, Removing, Toggling a class'),
          Code(title: 'script.js', code: code2, type: 'javascript'),
          const H2('Attribute'),
          const P(
              'In JavaScript, the getAttribute() and setAttribute() methods are used to get and set attributes on an HTML element, respectively.'),
          const H3('setAttribute, getAttribute'),
          Code(title: 'index.html', code: code3, type: 'html'),
          Code(title: 'script.js', code: code4, type: 'javascript'),
          const H3('hasAttribute, getAttributeNames, removeAttribute'),
          Code(title: 'script.js', code: code5, type: 'javascript'),
        ],
      ),
    );
  }
}

var code5 = '''
// hasAttribute()
console.log(input.hasAttribute("class"));

// getAttributeNames()
let list = input.getAttributeNames();
console.log(list);

// removeAttribute()
input.removeAttribute("name");
list = input.getAttributeNames();
console.log(list);
''';
var code4 = '''
const btnClick = document.querySelector("#btnClick");
const input = document.querySelector("input");

btnClick.addEventListener("click", function () {
  // getAttribute()
  const getAtt = input.getAttribute("type");
  if (getAtt == "text") {
    // setAttribute()
    // setAttribute("What attribute","What Value")
    input.setAttribute("type", "password");
  } else {
    // setAttribute()
    input.setAttribute("type", "text");
  }
});
''';
var code3 = '''
<input type="text" id="txtName" class="apple" name="name" />
<button id="btnClick">Click</button>
''';
var code2 = '''
const btnAdd = document.querySelector("#btnAdd");
const btnToggle = document.querySelector("#btnToggle");
const btnRemove = document.querySelector("#btnRemove");
const box = document.querySelector(".box")

// classList.add()
btnAdd.addEventListener("click", function () {
  box.classList.add("new-color");
});

// classList.remove()
btnRemove.addEventListener("click", function () {
  box.classList.remove("new-color");
});

// classList.toggle()
btnToggle.addEventListener("click", function () {
  box.classList.toggle("new-color");
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
      .box {
        width: 150px;
        height: 150px;
        background-color: palegreen;
        font-size: 20px;
        text-align: center;
        line-height: 150px;
        margin-bottom: 20px;
      }

      .new-color {
        color: orange;
        background-color: #222;
      }
    </style>
  </head>
  <body>
    <div class="box">Box</div>
    <button id="btnAdd">Add</button>
    <button id="btnRemove">Remove</button>
    <button id="btnToggle">Toggle</button>
    <hr />
    <input type="text" id="txtName" class="apple" name="name" />
    <button id="btnClick">Click</button>
    <script src="../94(3) DOM API.js"></script>
  </body>
</html>
''';
