import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/js/topicName/jsTopics.dart';

class LocalStorage extends StatefulWidget {
  const LocalStorage({Key? key}) : super(key: key);

  @override
  State<LocalStorage> createState() => _LocalStorageState();
}

class _LocalStorageState extends State<LocalStorage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 95,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Local Storage'),
          const P(
              'Local Storage in JavaScript refers to a web browser feature that allows web applications to store data persistently on a user\'s device. It provides a simple key-value store where developers can save and retrieve data directly within the user\'s browser. Local Storage is often used to store user preferences, settings, or any data that should be available between sessions or page refreshes without the need for a server.'),
          const P(
              'Local Storage provides a straightforward API for working with data:'),
          const TableResponsive(
            table: CTable(
              col: [
                DataColumn(
                  label: ThText('Simple API'),
                ),
                DataColumn(
                  label: ThText('Description'),
                ),
              ],
              row: [
                DataRow(
                  cells: [
                    DataCell(
                      TrText('localStorage.setItem(key, value)'),
                    ),
                    DataCell(
                      TrText('Sets a key-value pair in Local Storage.'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('localStorage.getItem(key)'),
                    ),
                    DataCell(
                      TrText(
                          'Retrieves the value associated with a specific key.'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('localStorage.removeItem(key)'),
                    ),
                    DataCell(
                      TrText(
                          'Removes a specific key and its associated value.'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('localStorage.clear()'),
                    ),
                    DataCell(
                      TrText(
                          'Clears all data stored in Local Storage for the current domain.'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const H3('How to use local Storage ?'),
          Code(title: 'index.html', code: code1, type: 'html'),
          Code(title: 'script.js', code: code2, type: 'javascript'),
          const H3('Toggle Theme Eg'),
          Code(title: 'index.html', code: code3, type: 'html'),
          Code(title: 'style.css', code: code4, type: 'css'),
          Code(title: 'script.js', code: code5, type: 'javascript'),
        ],
      ),
    );
  }
}

var code5 = '''
const btnToggle = document.getElementById("theme-toggle");

function toggleTheme() {
  const banner = document.getElementById("banner");
  banner.classList.toggle("dark");

  const isDarkTheme = banner.classList.contains("dark");

  localStorage.setItem("themePreference", isDarkTheme ? "dark" : "light");
}

btnToggle.addEventListener("click", toggleTheme);

window.addEventListener("DOMContentLoaded", function () {
  const themePreference = localStorage.getItem("themePreference");
  if (themePreference === "dark") {
    const banner = document.getElementById("banner");
    banner.classList.add("dark");
  }
});
''';
var code4 = '''
@import url("https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap");

* {
  font-family: "Poppins", sans-serif;
}

.banner {
  background-color: #f1e9e9;
  color: #446456;
  padding: 20px;
}

.title {
  font-size: 28px;
  font-weight: 500;
  margin: 0;
}

.slogan {
  font-size: 18px;
}

.dark {
  background-color: #333333;
  color: #ffffff;
}
''';
var code3 = '''
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Dark Light</title>
    <link rel="stylesheet" href="101_style.css" />
  </head>
  <body>
    <div class="banner" id="banner">
      <h1 class="title">Welcome to Tutor Joe's</h1>
      <p class="slogan">Discover the possibilities</p>
      <button id="theme-toggle">Toggle Theme</button>
    </div>
    <script src="101_ToggleTheme.js"></script>
  </body>
</html>
''';
var code2 = '''
// Maximum usage is 5mb

// Create
localStorage.setItem("name", "Sathish");

// Get
let myName = localStorage.getItem("name");
console.log(myName);

// Remove
localStorage.removeItem("name");

// Clear
localStorage.setItem("name", "Sathish");
localStorage.setItem("age", "18");
localStorage.setItem("gender", "Male");
localStorage.setItem("City", "Madurai");

localStorage.clear();
''';
var code1 = '''
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
  </head>
  <body>
    <script src="100_localStorage.js"></script>
  </body>
</html>
''';
