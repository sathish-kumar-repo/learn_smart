import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/js/topicName/jsTopics.dart';

class DOMTraversing extends StatefulWidget {
  const DOMTraversing({Key? key}) : super(key: key);

  @override
  State<DOMTraversing> createState() => _DOMTraversingState();
}

class _DOMTraversingState extends State<DOMTraversing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 80,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1(
              'DOM Traversing in JavaScript: Navigating the Document Object Model'),
          const P(
              'DOM traversing in JavaScript refers to the process of navigating the Document Object Model (DOM) to access and manipulate elements and their properties within an HTML document. The DOM is a tree-like structure that represents the structure of an HTML document, where each element is represented by a node in the tree.'),
          Note(note1),
          const Note('In DOM tree, all tag are Node'),
          const H2('Node in DOM'),
          const TableResponsive(
            table: CTable(
              col: [
                DataColumn(
                  label: ThText('Type'),
                ),
                DataColumn(
                  label: ThText('Node'),
                ),
              ],
              row: [
                DataRow(
                  cells: [
                    DataCell(
                      TrText('HTML'),
                    ),
                    DataCell(
                      TrText('HTML Element Node'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('HEAD'),
                    ),
                    DataCell(
                      TrText('HEAD Element Node'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('TITLE'),
                    ),
                    DataCell(
                      TrText('TITLE Element Node'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('COMMENT'),
                    ),
                    DataCell(
                      TrText('COMMENT Node'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('SPACE and ENTER'),
                    ),
                    DataCell(
                      TrText('TEXT Node{return(enter), space}'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('TYPING TEXT'),
                    ),
                    DataCell(
                      TrText('TEXT Node'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Note(note2),
          const Li('onsider the following HTML code:'),
          Code(title: 'index.html', code: code1, type: 'html'),
          const H3('Parent'),
          Code(title: 'script.js', code: code2, type: 'javascript'),
          const H3('Child'),
          Code(title: 'script.js', code: code3, type: 'javascript'),
          const H3('Siblings'),
          Code(title: 'script.js', code: code4, type: 'javascript'),
          const H3('Closest'),
          const P(
              'In JavaScript, the closest() method is a DOM method that allows you to traverse up the DOM tree from a specific element and find the closest ancestor element that matches a specified CSS selector. This method can be particularly useful when you need to find a specific parent element that contains a certain child element.'),
          Code(title: 'syntax', code: syntax, type: 'javascript'),
          Code(title: 'script.js', code: code5, type: 'javascript'),
          const H4('Overall Js Code'),
          Code(title: 'script.js', code: code6, type: 'javascript'),
        ],
      ),
    );
  }
}

var code6 = '''
// parentNode
const para = document.getElementsByTagName("P");
const parent = para[0].parentNode;
console.log(parent);
parent.style.backgroundColor = "palegreen";
parent.style.padding = "10px";

const h1 = document.getElementsByTagName("h1");
console.log(h1);
const parent_h1 = h1[0].parentNode;
parent_h1.style.backgroundColor = "palevioletred";
parent_h1.style.padding = "10px";

//firstChild
const firstChild = parent.firstChild;
console.log(firstChild);

//lastChild
const lastChild = parent.lastChild;
console.log(lastChild);

//firstElementChild
const firstElementChild = parent.firstElementChild;
console.log(firstElementChild);
firstElementChild.style.color = "blue";

//lastElementChild
const lastElementChild = parent.lastElementChild;
console.log(lastElementChild);
lastElementChild.style.color = "red";

const section = document.getElementsByTagName("section")[0];
console.log(section.firstChild);
console.log(section.firstElementChild);
console.log(section.lastChild);
console.log(section.lastElementChild);

console.log(h1[0].firstChild); // text node
console.log(h1[0].firstElementChild); // null
console.log(h1[0].lastChild); // text node
console.log(h1[0].lastElementChild); // null

//children
const div = document.getElementsByTagName("div")[0];
console.log(div);
console.log(div.children);
console.log(div.children[0]);
console.log(div.children[1]);
console.log(div.childElementCount);
console.log(div.childNodes);

//Siblings
const p = document.getElementsByTagName("p")[0];
console.log(p);
console.log(p.previousSibling);
console.log(p.previousElementSibling);

const h2 = document.getElementsByTagName("h2")[0];
console.log(h2);
console.log(h2.nextSibling);
console.log(h2.nextElementSibling);

const Section = document.getElementsByTagName("section")[0];
console.log(Section);
console.log(Section.nextSibling);
console.log(Section.nextElementSibling);
console.log(Section.previousSibling);
console.log(Section.previousElementSibling);

const h1_tag = document.querySelector("h1");
console.log(h1_tag);
const sectionTag = h1_tag.closest("section"); //also use id and class
console.log(sectionTag);
sectionTag.style.background = "purple";
sectionTag.style.color = "white";
sectionTag.style.padding = "10px";
''';
var code5 = '''
const h1_tag = document.querySelector("h1");
console.log(h1_tag);
const sectionTag = h1_tag.closest("section"); //also use id and class
console.log(sectionTag);
sectionTag.style.background = "purple";
sectionTag.style.color = "white";
sectionTag.style.padding = "10px";
''';
var syntax = '''
element.closest(selector);
''';
var code4 = '''
//Siblings
const p = document.getElementsByTagName("p")[0];
console.log(p);
console.log(p.previousSibling);
console.log(p.previousElementSibling);

const h2 = document.getElementsByTagName("h2")[0];
console.log(h2);
console.log(h2.nextSibling);
console.log(h2.nextElementSibling);

const Section = document.getElementsByTagName("section")[0];
console.log(Section);
console.log(Section.nextSibling);
console.log(Section.nextElementSibling);
console.log(Section.previousSibling);
console.log(Section.previousElementSibling);
''';
var code3 = '''
//firstChild
const firstChild = parent.firstChild;
console.log(firstChild);

//lastChild
const lastChild = parent.lastChild;
console.log(lastChild);

//firstElementChild
const firstElementChild = parent.firstElementChild;
console.log(firstElementChild);
firstElementChild.style.color = "blue";

//lastElementChild
const lastElementChild = parent.lastElementChild;
console.log(lastElementChild);
lastElementChild.style.color = "red";

const section = document.getElementsByTagName("section")[0];
console.log(section.firstChild);
console.log(section.firstElementChild);
console.log(section.lastChild);
console.log(section.lastElementChild);

console.log(h1[0].firstChild); // text node
console.log(h1[0].firstElementChild); // null
console.log(h1[0].lastChild); // text node
console.log(h1[0].lastElementChild); // null

//children
const div = document.getElementsByTagName("div")[0];
console.log(div);
console.log(div.children);
console.log(div.children[0]);
console.log(div.children[1]);
console.log(div.childElementCount);
console.log(div.childNodes);
''';
var code2 = '''
// parentNode
const para = document.getElementsByTagName("P");
const parent = para[0].parentNode;
console.log(parent);
parent.style.backgroundColor = "palegreen";
parent.style.padding = "10px";

const h1 = document.getElementsByTagName("h1");
console.log(h1);
const parent_h1 = h1[0].parentNode;
parent_h1.style.backgroundColor = "palevioletred";
parent_h1.style.padding = "10px";
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
    <section>
      <h1>This is Heading</h1>
      <div>
        <h2>Sample Title</h2>
        <p>This is Paragraph</p>
      </div>
    </section>
    <script src="../93_Traverse the DOM.js"></script>
  </body>
</html>
''';
var note2 = '''
\n* Space and New Line above the <head> tag are removed.
* Space and New Line below the <body> tag are moved and placed inside the body tag by DOM
''';
var note1 = '''
\nTraverse means walk along or move
In simple meaning move parent to child and parent to child
''';
