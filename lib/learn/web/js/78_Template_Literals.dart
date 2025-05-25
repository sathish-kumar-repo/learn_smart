import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/js/topicName/jsTopics.dart';

class TemplateLiterals extends StatefulWidget {
  const TemplateLiterals({Key? key}) : super(key: key);

  @override
  State<TemplateLiterals> createState() => _TemplateLiteralsState();
}

class _TemplateLiteralsState extends State<TemplateLiterals> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 78,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Template Literal'),
          const P(
              'Template Literals use back-ticks (` `) rather than the quotes (" ") to define a string'),
          const H3('Source Code'),
          Code(title: 'script.js', code: code1, type: 'javascript'),
          const H3('With Format'),
          Code(title: 'script.js', code: code2, type: 'javascript'),
          const Link(
              'https://www.tutorjoes.in/JS_tutorial/template_literals_in_javascript'),
        ],
      ),
    );
  }
}

var code2 = '''
let full_name = "Tutor Joes";
let age = "12";
let city = "Salem";
let role = "CEO Tutor Joes";

let output = "";
output =
  "<table border='1'><tr><th>Name</th><td>" +
  full_name +
  "</td></tr><tr><th>Age</th><td>" +
  age +
  "</td></tr><tr><th>City</th><td>" +
  city +
  "</td></tr><tr><th>Role</th><td>" +
  role +
  "</td></tr></table>";

//es5
output +=
  "<hr><table border='1'>" +
  "<tr><th>Name</th><td>" +
  full_name +
  "</td></tr>" +
  "<tr><th>Age</th><td>" +
  age +
  "</td></tr>" +
  "<tr><th>City</th><td>" +
  city +
  "</td></tr>" +
  "<tr><th>Role</th><td>" +
  role +
  "</td></tr>" +
  "</table>";

//es6
output += `<hr>
<table border='1'>
  <tr><th>Name</th><td>\${full_name}</td></tr>
  <tr><th>Age</th><td>\${age >= 25 ? "Good" : "Bad"}</td></tr>
  <tr><th>City</th><td>\${city}</td></tr>
  <tr><th>Role</th><td>\${role}</td></tr>
</table>`;

document.body.innerHTML=output;
''';
var code1 = '''
let full_name="Tutor Joes";
let age="12";
let city="Salem";
let role="CEO Tutor Joes";

let output="";
output="<table border='1'><tr><th>Name</th><td>"+full_name+"</td></tr><tr><th>Age</th><td>"+age+"</td></tr><tr><th>City</th><td>"+city+"</td></tr><tr><th>Role</th><td>"+role+"</td></tr></table>";

//es5
output+="<hr><table border='1'>"+
"<tr><th>Name</th><td>"+full_name+"</td></tr>"+
"<tr><th>Age</th><td>"+age+"</td></tr>"+
"<tr><th>City</th><td>"+city+"</td></tr>"+
"<tr><th>Role</th><td>"+role+"</td></tr>"+
"</table>";

//es6
output+=`<hr>
<table border='1'>
  <tr><th>Name</th><td>\${full_name}</td></tr>
  <tr><th>Age</th><td>\${age>=25?"Good":"Bad"}</td></tr>
  <tr><th>City</th><td>\${city}</td></tr>
  <tr><th>Role</th><td>\${role}</td></tr>
</table>`;

document.body.innerHTML=output;
''';
