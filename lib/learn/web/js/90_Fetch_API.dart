import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/JS/topicName/jsTopics.dart';

class FetchAPIJS extends StatefulWidget {
  const FetchAPIJS({Key? key}) : super(key: key);

  @override
  State<FetchAPIJS> createState() => _FetchAPIJSState();
}

class _FetchAPIJSState extends State<FetchAPIJS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 90,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1(
              'Fetch API in JavaScript: Making Asynchronous Network Requests'),
          const P(
              'The Fetch API is a JavaScript interface that provides a modern and powerful way to make asynchronous network requests in web browsers. It allows you to fetch resources from a server, such as JSON data, HTML pages, or binary files, and handle the response in a flexible manner.'),
          const H2('Example'),
          Code(title: 'index.html', code: code0, type: 'html'),
          const H3('Text File Fetch'),
          Code(title: 'script.js', code: code1, type: 'javascript'),
          const H3('JSON File Fetch'),
          Code(title: 'script.js', code: code2, type: 'javascript'),
          const H3('API Data Fetch'),
          Code(title: 'script.js', code: code3, type: 'javascript'),
          const H4('Source File'),
          Code(title: 'data.txt', code: code4, type: 'javascript'),
          Code(title: 'users.json', code: code5, type: 'json'),
        ],
      ),
    );
  }
}

var code5 = '''
[
  {
    "name": "Tiya",
    "age": 25,
    "gender": "Male",
    "contact": 7859586895,
    "isMarried": false,
    "city": "Salem"
  },
  {
    "name": "Ram",
    "age": 32,
    "gender": "Male",
    "contact": 859658585,
    "isMarried": true,
    "city": "Chennai"
  },
  {
    "name": "Sara",
    "age": 18,
    "gender": "Female",
    "contact": 8596857585,
    "isMarried": false,
    "city": "Salem"
  },
  {
    "name": "Sam",
    "age": 24,
    "gender": "Male",
    "contact": 856968575,
    "isMarried": true,
    "city": "Chennai"
  }
]
''';
var code4 = '''
This is sample text from data.txt
''';
var code3 = '''
const btnApi = document.querySelector("#btn-api");
const outputApi = document.querySelector("#api-output");

btnApi.addEventListener("click", getApiData);

async function getApiData() {
  const response = await fetch("https://jsonplaceholder.typicode.com/posts");
  const jsonData = await response.json();
  let output = "";
  jsonData.forEach((post) => {
    output += `<div class='post'>
            <h4>\${post.title}</h4>
            <p>\${post.body}</p>
      </div>`;
  });

  outputApi.innerHTML = output;
}
''';
var code2 = '''
const btnJson = document.querySelector("#btn-json");
const outputJson = document.querySelector("#json-output");

btnJson.addEventListener("click", getJsonData);

function getJsonData() {
  fetch("users.json")
    .then((res) => res.json())
    .then((users) => {
      let data = "<ul>";
      users.forEach((user) => {
        data += `<li>\${user.name} : \${user.age}</li>`;
      });
      data += "</ul>";
      outputJson.innerHTML = data;
    });
}
''';
var code1 = '''
const btnText = document.querySelector("#btn-text");
const outputText = document.querySelector("#txt-output");

btnText.addEventListener("click", getTextFile);

function getTextFile() {
  fetch("data.txt")
    .then((res) => res.text())
    .then((data) => {
      outputText.innerHTML = data;
    });
}
''';
var code0 = '''
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
        font-family: "Poppins", sans-serif;
      }

      .post {
        background-color: palegreen;
        margin-bottom: 20px;
        padding: 20px;
      }
      .post h4 {
        color: blue;
      }
    </style>
  </head>
  <body>
    <h3>Fetch in JavaScript</h3>

    <div id="txt-output">--</div>
    <button id="btn-text">Get Text</button>

    <hr />

    <div id="json-output"></div>
    <button id="btn-json">Get Json</button>

    <hr />

    <button id="btn-api">Get Api</button>
    <div id="api-output"></div>

    <script src="fetch_api.js"></script>
    <hr />
  </body>
</html>
''';
