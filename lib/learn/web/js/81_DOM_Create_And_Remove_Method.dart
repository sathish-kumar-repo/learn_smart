import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/js/topicName/jsTopics.dart';

class DOMCreateAndRemoveMethod extends StatefulWidget {
  const DOMCreateAndRemoveMethod({Key? key}) : super(key: key);

  @override
  State<DOMCreateAndRemoveMethod> createState() =>
      _DOMCreateAndRemoveMethodState();
}

class _DOMCreateAndRemoveMethodState extends State<DOMCreateAndRemoveMethod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 81,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Creating HTML Elements with the DOM Create Method'),
          const P(
              'In JavaScript, you can create, manipulate, and modify HTML elements on a webpage using the Document Object Model (DOM). The DOM represents the webpage as a tree-like structure of objects, where each node represents an element in the HTML document.'),
          const P(
              'In JavaScript, the Document Object Model (DOM) allows developers to dynamically create HTML elements and insert them into the web page. There are several methods that can be used to create new elements in the DOM, including createElement, createTextNode, and appendChild.'),
          const Link(
              'https://www.tutorjoes.in/JS_tutorial/document_object_model_create_methods_in_javascript'),
          const Li('Let consider the html code'),
          Code(title: 'index.html', code: code0, type: 'html'),
          const H3('createElement'),
          Code(title: 'script.js', code: code1, type: 'javascript'),
          const H3('appendChild'),
          const P(
              'In JavaScript, appendChild() is a method that adds a new child node to the end of a parent node.'),
          Code(title: 'script.js', code: code2, type: 'javascript'),
          const H3('insertBefore'),
          Code(title: 'syntax', code: code3, type: 'javascript'),
          Code(title: 'script.js', code: code4, type: 'javascript'),
          const Li('Let consider the html code'),
          Code(title: 'index.html', code: code5, type: 'html'),
          const H3('remove'),
          Code(title: 'script.js', code: code6, type: 'javascript'),
          const H3('removeChild'),
          Code(title: 'script.js', code: code7, type: 'javascript'),
        ],
      ),
    );
  }
}

var code = '''''';
var code7 = '''
const removeBtns2 = document.querySelectorAll(".btnRemove");
removeBtns2.forEach((btn) => {
  btn.addEventListener("click", function () {
    const tr = this.parentNode.parentNode;
    let Agetd = tr.childNodes[5];
    console.log(Agetd);
    tr.removeChild(Agetd);
  });
});
''';
var code6 = '''
const removeBtns1 = document.querySelectorAll(".btnRemove");
removeBtns1.forEach((btn) => {
  btn.addEventListener("click", function () {
    const tr = this.parentNode.parentNode;
    tr.remove();
  });
});
''';
var code5 = '''
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
  </head>
  <body>
    <table>
      <thead>
        <tr>
          <th>S.No</th>
          <th>Name</th>
          <th>Age</th>
          <th>Remove</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>1</td>
          <td>Sathish</td>
          <td>25</td>
          <td><button class="btnRemove">Remove</button></td>
        </tr>
        <tr>
          <td>2</td>
          <td>Sam</td>
          <td>27</td>
          <td><button class="btnRemove">Remove</button></td>
        </tr>
        <tr>
          <td>3</td>
          <td>Raja</td>
          <td>27</td>
          <td><button class="btnRemove">Remove</button></td>
        </tr>
        <tr>
          <td>4</td>
          <td>Ram</td>
          <td>29</td>
          <td><button class="btnRemove">Remove</button></td>
        </tr>
      </tbody>
    </table>
    <script src="../94(1) DOM API.js"></script>
  </body>
</html>
''';
var code4 = '''
// insertBefore
let h1 = document.createElement("h1");
h1.innerHTML = "This is Heading";
h1.style.color = "red";
body.insertBefore(h1, para);
''';
var code3 = '''
parentNode.insertBefore(newNode, referenceNode);
''';
var code2 = '''
// appendChild
const body = document.querySelector("body");
body.appendChild(para);
''';
var code1 = '''
// createElement
let para = document.createElement("p");
para.innerHTML = "This is a <i>Sample Paragraph</i>";
// para.innerText = "This is a <i>Sample Paragraph</i>";
para.style.color = "brown";
''';
var code0 = '''
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
  </head>
  <body>
    <script src="../94_DOM API.js"></script>
  </body>
</html>
''';
