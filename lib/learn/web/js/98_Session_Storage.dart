import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/js/topicName/jsTopics.dart';

class SessionStorage extends StatefulWidget {
  const SessionStorage({Key? key}) : super(key: key);

  @override
  State<SessionStorage> createState() => _SessionStorageState();
}

class _SessionStorageState extends State<SessionStorage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 98,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Session Storage'),
          const P(
              'Session Storage is a web storage mechanism available in JavaScript that allows you to store key-value pairs of data on the client side, similar to cookies and local storage. However, unlike cookies, session storage is temporary and has a limited scope.'),
          const P(
              'Session Storage provides a straightforward API for working with data:'),
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
                      TrText('sessionStorage.setItem(key, value)'),
                    ),
                    DataCell(
                      TrText('Sets a key-value pair in Session Storage.'),
                    ),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(
                      TrText('sessionStorage.getItem(key)'),
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
                      TrText('sessionStorage.removeItem(key)'),
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
                      TrText('sessionStorage.clear()'),
                    ),
                    DataCell(
                      TrText('Clears all data stored in Session Storage'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const H3('Source Code'),
          Code(title: 'index.html', code: code1, type: 'html'),
          Code(title: 'step2.html', code: code2, type: 'html'),
          Code(title: 'review.html', code: code3, type: 'html'),
          Code(title: 'style.css', code: code4, type: 'css'),
          const Link(
              'https://www.tutorjoes.in/JS_tutorial/template_session_storage_in_javascript')
        ],
      ),
    );
  }
}

var code4 = '''
@import url("https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap");

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: "Poppins", sans-serif;
}

body {
  background-color: #f2f2f2;
  width: 100vw;
  height: 100vh;
  display: grid;
  place-items: center;
}

.container {
  width: 600px;
  background-color: #fff;
  border: 1px solid #ccc;
  padding: 20px;
  border-radius: 5px;
}
h1 {
  font-size: 20px;
  font-weight: 500;
  margin-bottom: 20px;
  text-align: center;
  text-transform: uppercase;
}

h2 {
  font-size: 18px;
  font-weight: 500;
  margin-bottom: 15px;
  color: chocolate;
  text-transform: uppercase;
}

label {
  display: block;
  margin-bottom: 10px;
}

input[type="text"],
input[type="email"] {
  width: 100%;
  padding: 10px;
  font-size: 16px;
  border: 1px solid #ccc;
  border-radius: 5px;
  margin-bottom: 20px;
}

button {
  padding: 10px 20px;
  font-size: 16px;
  background-color: #4caf50;
  color: white;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  transition: background-color 0.3s;
}

button:hover {
  background-color: #45a049;
}

table {
  width: 100%;
  border: 1px solid #ccc;
  margin-bottom: 15px;
  border-collapse: collapse;
}

table th,
table td {
  border-bottom: 1px solid #ccc;
  padding: 10px;
  text-align: left;
  cursor: pointer;
}

table td {
  border-left: 1px solid #ccc;
}

tr:hover {
  background-color: #f1f1f1;
}

.finish {
  background-color: #fa5828;
}

.finish:hover {
  background-color: #bd3309;
}
''';
var code3 = '''
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Review</title>
    <link rel="stylesheet" href="style.css" />
  </head>
  <body>
    <div class="container">
      <h1>Multi-Step Form Session Storage</h1>
      <h2>Review Details</h2>
      <table id="dataTable"></table>

      <button type="button" id="btnStep2Back">Back Step</button>
      <button type="button" class="finish">Confirm Submission</button>
    </div>
    <script>
      const btnStep2Back = document.getElementById("btnStep2Back");
      const dataTable = document.getElementById("dataTable");
      btnStep2Back.addEventListener("click", function () {
        window.location.href = "http://127.0.0.1:5500/step2.html";
      });

      function loadSession() {
        let data = sessionStorage.getItem("formData") || {};
        data = JSON.parse(data);
        let output = "";

        output = `
          <tr>
          <th>Name</th>
          <td>\${data.name}</td>
        </tr>
        <tr>
          <th>Email</th>
          <td>\${data.email}</td>
        </tr>
        <tr>
          <th>Address</th>
          <td>\${data.address}</td>
        </tr>
        <tr>
          <th>Contact No</th>
          <td>\${data.phone}</td>
        </tr>`;

        dataTable.innerHTML = output;
      }
      loadSession();
    </script>
  </body>
</html>
''';
var code2 = '''
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Step-2</title>
    <link rel="stylesheet" href="style.css" />
  </head>
  <body>
    <div class="container">
      <h1>Multi-Step Form Session Storage</h1>
      <h2>Step 2 - Additional Details</h2>
      <form>
        <label for="address">Address:</label>
        <input type="text" id="address" placeholder="Full Address" />

        <label for="phone">Phone:</label>
        <input type="text" id="phone" placeholder="Enter Contact Number" />

        <button type="button" id="btnStep1Back">Back Step</button>
        <button type="button" id="btnStep2Next">Next Step</button>
      </form>
    </div>
    <script>
      const address = document.getElementById("address");
      const phone = document.getElementById("phone");
      const btnStep1Back = document.getElementById("btnStep1Back");
      const btnStep2Next = document.getElementById("btnStep2Next");

      function loadSession() {
        let data = sessionStorage.getItem("formData") || {};
        if (data.length > 0) {
          data = JSON.parse(data);
          address.value = data.address == undefined ? "" : data.address;
          phone.value = data.phone == undefined ? "" : data.phone;
        }
      }
      loadSession();

      btnStep1Back.addEventListener("click", function () {
        window.location.href = "http://127.0.0.1:5500/index.html";
      });

      btnStep2Next.addEventListener("click", function () {
        if (address.value != "" && phone.value != "") {
          const formData = JSON.parse(sessionStorage.getItem("formData")) || {};

          formData.address = address.value;
          formData.phone = phone.value;

          sessionStorage.setItem("formData", JSON.stringify(formData));
          window.location.href = "http://127.0.0.1:5500/review.html";
        } else {
          alert("Please Fill All Details");
          address.focus();
        }
      });
    </script>
  </body>
</html>
''';
var code1 = '''
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Step-1</title>
    <link rel="stylesheet" href="style.css" />
  </head>
  <body>
    <div class="container">
      <h1>Multi-Step Form Session Storage</h1>
      <h2>Step 1 - Personal Details</h2>
      <form>
        <label for="name">Name</label>
        <input type="text" id="name" placeholder="Enter Full Name" />
        <label for="email">Email:</label>
        <input type="email" id="email" placeholder="Enter Email Address" />
        <button type="button" id="btnStep1Next">Next Step</button>
      </form>
    </div>
    <script>
      const name = document.getElementById("name");
      const email = document.getElementById("email");
      const btnStep1Next = document.getElementById("btnStep1Next");

      function loadSession() {
        let data = sessionStorage.getItem("formData") || {};
        if (data.length > 0) {
          data = JSON.parse(data);
          name.value = data.name;
          email.value = data.email;
        }
      }
      loadSession();
      btnStep1Next.addEventListener("click", function () {
        if (name.value != "" && email.value != "") {
          const formData = JSON.parse(sessionStorage.getItem("formData")) || {};

          formData.name = name.value;
          formData.email = email.value;

          sessionStorage.setItem("formData", JSON.stringify(formData));
          window.location.href = "http://127.0.0.1:5500/step2.html";
        } else {
          alert("Please Fill All Details");
          name.focus();
        }
      });
    </script>
  </body>
</html>
''';
