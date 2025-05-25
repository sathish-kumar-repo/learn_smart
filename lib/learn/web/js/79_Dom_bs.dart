import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/js/topicName/jsTopics.dart';

class DOMbs extends StatefulWidget {
  const DOMbs({Key? key}) : super(key: key);

  @override
  State<DOMbs> createState() => _DOMbsState();
}

class _DOMbsState extends State<DOMbs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 79,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('The Document Object Model (DOM)'),
          const H3('DOM'),
          const P(
              'The Document Object Model (DOM) is a programming interface for web documents. It represents the structure of an HTML or XML document as a tree-like structure called the DOM tree. Each node in the tree represents an element, attribute, or piece of text in the document.'),
          const Link(
              'https://www.tutorjoes.in/JS_tutorial/document_object_model_in_javascript'),
          Code(title: 'script.js', code: code1, type: 'javascript'),
          const H3('Accessing the DOM'),
          const Note('In js all are object, window is the king of the dom'),
          const H4('How to access the dom ?'),
          const P('there are 5 ways to access the dom'),
          const H5('Traditional use'),
          const Li('document.getElementById()\n=> Return an element object'),
          const Li(
              'document.getElementsByClassName()\n=> Return an HTMLCollection'),
          const Li(
              'document.getElementsByTagName()\n=> Return an HTMLCollection'),
          const H5('Latest version'),
          const Li('document.querySelector()\n=> Return an element object'),
          const Li('document.querySelectorAll()\n => Return an NodeList'),
          Code(title: 'index.html', code: code2, type: 'html'),
          Code(title: 'script.js', code: code3, type: 'javascript'),
          const H3('Difference b/w HTMLcollection and NodeList'),
          const TableResponsive(
            table: CTable(
              col: [
                DataColumn(
                  label: ThText('HTMLcollection'),
                ),
                DataColumn(
                  label: ThText('NodeList'),
                ),
              ],
              row: [
                DataRow(
                  cells: [
                    DataCell(
                      TrText('live update'),
                    ),
                    DataCell(
                      TrText('use only normal for loop'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('it is static not update in live'),
                    ),
                    DataCell(
                      TrText('it is array method and also use normal for loop'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const H3('Family Structure'),
          const P(
              'In the Document Object Model (DOM) in JavaScript, family structure refers to the hierarchical relationship between HTML elements on a web page. The DOM tree represents the structure of an HTML document as a tree-like structure, where each node in the tree represents an element, attribute, or piece of text in the document. The family structure of DOM is also known as the parent-child relationship.'),
          const Link(
              'https://www.tutorjoes.in/JS_tutorial/document_object_model_family_structure_in_javascript'),
          const Li('Eg(Difference b/w HTMLcollection and NodeList)'),
          Code(title: 'index.html', code: code4, type: 'html'),
          const P('Now add new li in ul using JS in Two Ways'),
          const H4('HTML Collection'),
          Code(title: 'script.js', code: code5, type: 'javascript'),
          const H4('NodeList'),
          Code(title: 'script.js', code: code6, type: 'javascript'),
          const H3('Family Tree'),
          const P(
              'A DOM family tree in JavaScript is a visualization of a family hierarchy using the Document Object Model (DOM) and JavaScript DOM manipulation techniques. It involves creating a tree structure where each node represents a family member, and the edges represent the relationships between them. The family tree can be used to display information such as names, ages, and other relevant details about each family member.'),
          const Link(
              'https://www.tutorjoes.in/JS_tutorial/document_object_model_family_tree_in_javascript'),
          const H4('Node Types'),
          const OLi(no: 1, 'Element Node'),
          const OLi(no: 2, 'Text Node'),
          const OLi(no: 3, 'Comment Node'),
          const OLi(no: 4, 'Document Node'),
          Code(title: 'index.html', code: code7, type: 'html'),
        ],
      ),
    );
  }
}

var code7 = '''
<html>  <!--Element node-->
  <body>
    <!-- This is comment --> <!--Comment node-->
    <section>
      <h1>This is Heading</h1> <!--This is Heading =. Text node-->
      <div>
        <h2>Sample Title</h2>
        <p>This is  para1</p>
        <p>This is  para2</p>
      </div>
      <div>
        <h2>Sample Title</h2>
        <p>This is  para3</p>
      </div>
    </section>
  </body>
</html>

<!-- Enter(That is space) is also consider text node in DOM  -->
''';
var code6 = '''
// NodeList

let li = document.querySelectorAll("li");
console.log(li);
console.log(li.length);

let element = document.createElement("li");
element.innerHTML = "JavaScript";

li[0].parentNode.appendChild(element);
console.log(li);
console.log(li.length);

//  Query selectors antha time la select panni antha value va eduthu vachukum,only change in dom and marupadi query selector use panni select panna automatica change aagidum 
li.forEach((element) => {
  element.style.color = "orange";
});

li = document.querySelectorAll("li");
console.log(li);
console.log(li.length);
''';
var code5 = '''
// HTML Collection


let li = document.getElementsByTagName("li");
console.log(li);
console.log(li.length);

let element = document.createElement("li");
element.innerHTML = "JavaScript";

li[0].parentNode.appendChild(element); // in html all tag are node
console.log(li);
console.log(li.length);

for (let i = 0; i < li.length; i++) {
  li[i].style.color = "orange";
}
''';
var code4 = '''
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>DOM</title>
  </head>
  <body>
    <ul>
      <li>C</li>
      <li>C++</li>
      <li>Java</li>
    </ul>
    <script src="91_difference between HTMLCollection and NodeList.js"></script>
  </body>
</html>
''';
var code3 = '''
// To style brand
let brand = document.getElementById("brand");

console.log(brand); // to print html element
console.log(brand.nodeType); // output: 1 , that is it is element node default value is 1(constant value)
console.log(brand.nodeName); // output: H3

brand.style.backgroundColor = "purple";
brand.style.color = "white";

let stitle = document.getElementsByClassName("sub-title");

console.log(stitle); // to print html collection is not an array, it is only use in normal for loop , forEach is not possible to use

// stitle.style.color = "Red"; // error because it is collection not access simultaneosuly
// Solution is
stitle[0].style.color = "Red";
stitle[1].style.color = "Red";

/*
// it is not possible
stitle.forEach((element) => {
  element.style.color = "Red";
});
*/

for (let i = 0; i < stitle.length; i++) {
  stitle[i].style.color = "blue";
}

let para = document.getElementsByTagName("p");
console.log(para);

for (let i = 0; i < para.length; i++) {
  para[i].style.color = "purple";
}

let heading = document.querySelector("h1"); // it is also pass class, id,tag name
console.log(heading);
heading.style.color = "orange";

// to select multiple elements and return node list

// it is speciality
//Use forEach, that is, it is array format
let qpara = document.querySelectorAll("p");
console.log(qpara); // to get node objects
qpara.forEach((element) => {
  element.style.color = "blue";
});
''';
var code2 = '''
<html lang="en">
  <head>
    <title>Sathish Kumar</title>
  </head>
  <body>
    <h3 id="brand">Sathish Kumar</h3>
    <h1>ACCESSING THE DOM</h1>
    <h3 class="sub-title">JavaScript Tutorial</h3>
    <p>
      Lorem ipsum dolor sit, amet consectetur adipisicing elit. Necessitatibus
      accusantium ab quam? Perferendis similique velit inventore, quibusdam
      omnis ad earum. Illum repellat eum saepe laboriosam ea, a non soluta quo.
    </p>
    <h3 class="sub-title">DOM Tutorial</h3>
    <p>
      Lorem ipsum dolor sit, amet consectetur adipisicing elit. Necessitatibus
      accusantium ab quam? Perferendis similique velit inventore, quibusdam
      omnis ad earum. Illum repellat eum saepe laboriosam ea, a non soluta quo.
    </p>
    <script src="90_Accessing the dom.js"></script>
  </body>
</html>
''';
var code1 = '''
window.alert("Text");

// But mostly not use window object all are use document object
console.log(window.document == document); // true
// window object and document object is same over

// to print document object using dir
console.dir(document);

// to set title
document.title = "Sathish Kumar";

//To change bg color
document.bgColor = "teal";

// wrong syntax to change to correct syntax automatically by DOM(It is also do correction work)
/*
<html>
    hello sathish
</html>
*/
''';
