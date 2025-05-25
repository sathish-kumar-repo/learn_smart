import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/js/topicName/jsTopics.dart';

class LocalStorageWithArray extends StatefulWidget {
  const LocalStorageWithArray({Key? key}) : super(key: key);

  @override
  State<LocalStorageWithArray> createState() => _LocalStorageWithArrayState();
}

class _LocalStorageWithArrayState extends State<LocalStorageWithArray> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 96,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Local Storage in Array'),
          const OLi(
              no: 1,
              'convert Array to strings using JSON.stringify() before storing '),
          const OLi(
              no: 2,
              'convert them back to their original form using JSON.parse() after retrieving. '),
          const H3('Source Code'),
          Code(title: 'index.html', code: code1, type: 'html'),
          Code(title: 'script.js', code: code2, type: 'javascript'),
          Code(title: 'style.css', code: code3, type: 'css'),
          const P(
              'To Know about Storage Limitations, Data Format, Persistent Storage...'),
          const Link(
              'https://www.tutorjoes.in/JS_tutorial/local_storage_in_javascript'),
        ],
      ),
    );
  }
}

var code = '''''';
var code3 = '''
@import url("https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap");

* {
  margin: 0;
  padding: 0;
}

body {
  font-family: "Poppins", sans-serif;
  background-color: #f0f0f0;
}

.container {
  max-width: 800px;
  background-color: #fff;
  margin: 0 auto;
  padding: 20px;
  border: 1px solid #ccc;
  border-radius: 5px;
}

h1 {
  text-align: center;
  font-weight: 500;
  font-size: 18px;
  color: crimson;
  text-transform: uppercase;
  margin-bottom: 10px;
}

p {
  margin-bottom: 10px;
}

hr {
  margin-top: 20px;
  margin-bottom: 20px;
}

mark {
  font-weight: bold;
}

h2 {
  font-size: 16px;
  font-weight: 500;
  color: chocolate;
  margin-bottom: 10px;
}

label,
input {
  display: block;
  margin-bottom: 5px;
}

button {
  padding: 3px 6px;
}

#output {
  border-top: 1px solid #ccc;
  padding-top: 10px;
  margin-top: 10px;
}

#dataList {
  list-style-type: none;
}

#dataList li {
  display: flex;
  justify-content: space-between;
  margin-bottom: 5px;
}
''';
var code2 = '''
document.addEventListener("DOMContentLoaded", function () {
  const dataForm = document.getElementById("dataForm");
  const dataInput = document.getElementById("dataInput");
  const dataList = document.getElementById("dataList");

  loadStoredData();

  dataForm.addEventListener("submit", function (e) {
    e.preventDefault();
    const data = dataInput.value.trim();
    if (data !== "") {
      addToLocalStorage(data);
      loadStoredData();
      dataInput.value = "";
    } else {
      alert("Please Enter The Data");
      dataInput.focus();
    }
  });

  //Add New Data to LocalStorage
  function addToLocalStorage(data) {
    const storedData = JSON.parse(localStorage.getItem("myData")) || [];
    storedData.push(data);
    localStorage.setItem("myData", JSON.stringify(storedData));
  }

  //Load All Data From LocalStorage
  function loadStoredData() {
    const storedData = JSON.parse(localStorage.getItem("myData")) || [];
    dataList.innerHTML = "";
    storedData.forEach((data, index) => {
      // const li = document.createElement("li");
      // li.textContent = data;
      // dataList.appendChild(li);

      let output = `
    <li>
    \${data}
    <div>
      <button class='btnEdit' data-index='\${index}' >Edit</button>
      <button class='btnDelete'data-index='\${index}' >Delete</button>
    </div>
     <li>
`;
      dataList.innerHTML += output;
    });

    const delButtons = document.querySelectorAll(".btnDelete");
    delButtons.forEach((btn) => {
      btn.addEventListener("click", deleteData);
    });

    const editButtons = document.querySelectorAll(".btnEdit");
    editButtons.forEach((btn) => {
      btn.addEventListener("click", editData);
    });
  }

  //To Delete A User from LocalStorage
  function deleteData() {
    if (confirm("Are Your Sure to Delete")) {
      const index = this.dataset.index;
      const storedData = JSON.parse(localStorage.getItem("myData")) || [];
      storedData.splice(index, 1);
      localStorage.setItem("myData", JSON.stringify(storedData));
      loadStoredData();
    }
  }

  //To Modify User Data
  function editData() {
    const index = this.dataset.index;
    const storedData = JSON.parse(localStorage.getItem("myData")) || [];
    const newData = prompt("Edit Username", storedData[index]);
    if (newData !== null) {
      storedData[index] = newData.trim();
      localStorage.setItem("myData", JSON.stringify(storedData));
      loadStoredData();
    }
  }
});
''';
var code1 = '''
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>LocalStorage Array Values</title>
    <link rel="stylesheet" href="102_style.css" />
  </head>
  <body>
    <div class="container">
      <h1>CRUD with Local Storage</h1>
      <p>
        1.convert Array to strings using <mark>JSON.stringify()</mark> before
        storing
      </p>
      <p>
        2.convert them back to their original form using
        <mark>JSON.parse()</mark> after retrieving.
      </p>
      <hr />
      <form id="dataForm">
        <label for="dataInput">Enter Data</label>
        <input type="text" id="dataInput" />
        <button type="submit">Add Data</button>
      </form>

      <div id="output">
        <h2>Stored Data</h2>
        <ul id="dataList"></ul>
      </div>
    </div>
    <script src="102_StoreArrayInlocalStorage.js"></script>
  </body>
</html>
''';
