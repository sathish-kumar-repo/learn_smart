import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/JS/topicName/jsTopics.dart';

class StoreArrayOfObjectInLocalStorage extends StatefulWidget {
  const StoreArrayOfObjectInLocalStorage({Key? key}) : super(key: key);

  @override
  State<StoreArrayOfObjectInLocalStorage> createState() =>
      _StoreArrayOfObjectInLocalStorageState();
}

class _StoreArrayOfObjectInLocalStorageState
    extends State<StoreArrayOfObjectInLocalStorage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 97,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Local Storage in Object'),
          const P(
              'Object Local Storage" in JavaScript typically refers to the practice of storing JavaScript objects (complex data structures) in Local Storage, a web browser feature that allows data to be stored persistently on a user\'s device. This approach involves serializing JavaScript objects to JSON strings before storing them in Local Storage and deserializing them when retrieved.'),
          const H3('Source Code'),
          Code(title: 'index.html', code: code1, type: 'html'),
          Code(title: 'script.js', code: code2, type: 'javascript'),
          Code(title: 'style.css', code: code3, type: 'css'),
        ],
      ),
    );
  }
}

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
  max-width: 500px;
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

h2 {
  font-size: 16px;
  font-weight: 500;
  color: chocolate;
  margin-bottom: 10px;
}
label,
input,
select {
  display: block;
  width: 250px;
  height: 25px;
  margin-bottom: 5px;
  padding-left: 2px;
}

button {
  display: block;
  padding: 3px 15px;
}

#output {
  margin-top: 30px;
  border-top: 1px solid #ccc;
  padding-top: 10px;
}

table {
  width: 100%;
  border-collapse: collapse;
}

th,
td {
  padding: 5px 3px;
  text-align: left;
  border-bottom: 1px solid #ddd;
}

tr:hover {
  background-color: #f2f2f2;
}

.modal {
  display: none;
  position: fixed;
  z-index: 1;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, 0.5);
}

.modal-content {
  background-color: #fff;
  width: 60%;
  margin: 15% auto;
  padding: 20px;
  border: 1px solid #888;
}

.close {
  float: right;
  font-size: 28px;
  font-weight: bold;
  cursor: pointer;
  color: #aaa;
}

.close:hover {
  color: black;
}

#editForm button,
#dataForm button {
  margin-top: 10px;
}
''';
var code2 = '''
document.addEventListener("DOMContentLoaded", function () {
  const modal = document.querySelector(".modal");
  const closeBtn = document.querySelector(".close");
  const tableBody = document.querySelector("#dataList");
  const dataForm = document.getElementById("dataForm");

  const nameInput = document.getElementById("nameInput");
  const ageInput = document.getElementById("ageInput");
  const genderSelect = document.getElementById("genderSelect");

  const editForm = document.getElementById("editForm");
  const editIndex = document.getElementById("editIndex");
  const editNameInput = document.getElementById("editNameInput");
  const editAgeInput = document.getElementById("editAgeInput");
  const editGenderSelect = document.getElementById("editGenderSelect");

  dataForm.addEventListener("submit", function (e) {
    e.preventDefault();
    const name = nameInput.value.trim();
    const age = parseInt(ageInput.value);
    const gender = genderSelect.value;
    if (name !== "" && !isNaN(age) && gender !== "") {
      const user = {
        name: name,
        age: age,
        gender: gender,
      };
      addToLocalStorage(user);
      loadStoredData();
      dataForm.reset();
    } else {
      alert("Please Fill All Details");
    }
  });

  editForm.addEventListener("submit", function (e) {
    e.preventDefault();
    const index = editIndex.value.trim();
    const newName = editNameInput.value.trim();
    const newAge = parseInt(editAgeInput.value);
    const newGender = editGenderSelect.value;
    if (newName !== "" && !isNaN(newAge) && newGender !== "") {
      const storedData = JSON.parse(localStorage.getItem("myData")) || [];
      storedData[index].name = newName;
      storedData[index].age = newAge;
      storedData[index].gender = newGender;
      localStorage.setItem("myData", JSON.stringify(storedData));
      editForm.reset();
      modal.style.display = "none";
      loadStoredData();
    } else {
      alert("Please Fill All Details");
    }
  });

  function addToLocalStorage(user) {
    const storedData = JSON.parse(localStorage.getItem("myData")) || [];
    storedData.push(user);
    localStorage.setItem("myData", JSON.stringify(storedData));
  }

  loadStoredData();

  function editData() {
    const index = this.dataset.index;
    const storedData = JSON.parse(localStorage.getItem("myData")) || [];
    const data = storedData[index];
    editIndex.value = index;
    editNameInput.value = data.name;
    editAgeInput.value = data.age;
    editGenderSelect.value = data.gender;
    modal.style.display = "block";
  }

  function deletaData() {
    if (confirm("Are You Sure to Delete ?")) {
      const index = this.dataset.index;
      const storedData = JSON.parse(localStorage.getItem("myData")) || [];
      storedData.splice(index, 1);
      localStorage.setItem("myData", JSON.stringify(storedData));
      loadStoredData();
    }
  }
  // Function to close the modal using Close Btn
  closeBtn.addEventListener("click", function () {
    modal.style.display = "none";
  });

  // Function to close the modal using Model Window Click
  window.addEventListener("click", function (e) {
    if (e.target == modal) {
      modal.style.display = "none";
    }
  });

  function loadStoredData() {
    const storedData = JSON.parse(localStorage.getItem("myData")) || [];
    tableBody.innerHTML = "";
    storedData.forEach(function (data, index) {
      const row = document.createElement("tr");
      row.innerHTML = `
          <td>\${data.name}</td>
          <td>\${data.age}</td>
          <td>\${data.gender}</td>
          <td><button data-index="\${index}" class="btnEdit">Edit</button></td>
          <td><button data-index="\${index}" class="btnDelete">Delete</button></td>
        `;
      tableBody.appendChild(row);
    });
    const editButtons = document.querySelectorAll(".btnEdit");
    editButtons.forEach((btn) => {
      btn.addEventListener("click", editData);
    });

    const delButtons = document.querySelectorAll(".btnDelete");
    delButtons.forEach((btn) => {
      btn.addEventListener("click", deletaData);
    });
  }
});

/*
  [{"name":"Tiya","age":2,"gender":"Female"},{"name":"Raja","age":45,"gender":"Male"}]
*/
''';
var code1 = '''
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Object-LocalStorage</title>
    <link rel="stylesheet" href="103_style.css" />
  </head>
  <body>
    <div class="container">
      <h1>CRUD with Local Storage</h1>
      <form id="dataForm">
        <label for="nameInput">Name:</label>
        <input type="text" id="nameInput" required />

        <label for="ageInput">Age:</label>
        <input type="number" id="ageInput" required />

        <label for="genderSelect">Gender:</label>
        <select id="genderSelect" required>
          <option value="">Select Gender</option>
          <option value="Male">Male</option>
          <option value="Female">Female</option>
        </select>

        <button type="submit">Add Data</button>
      </form>

      <div id="output">
        <h2>Stored Data:</h2>
        <table id="dataTable">
          <thead>
            <tr>
              <th>Name</th>
              <th>Age</th>
              <th>Gender</th>
              <th>Edit</th>
              <th>Delete</th>
            </tr>
          </thead>
          <tbody id="dataList"></tbody>
        </table>
      </div>
    </div>
    <div class="modal">
      <div class="modal-content">
        <span class="close">&times;</span>
        <h2>Edit Data</h2>
        <form id="editForm">
          <input type="hidden" id="editIndex" />
          <label for="editNameInput">Name:</label>
          <input type="text" id="editNameInput" required />

          <label for="editAgeInput">Age:</label>
          <input type="number" id="editAgeInput" required />

          <label for="editGenderSelect">Gender:</label>
          <select id="editGenderSelect" required>
            <option value="">Select Gender</option>
            <option value="Male">Male</option>
            <option value="Female">Female</option>
          </select>

          <button type="submit">Save Changes</button>
        </form>
      </div>
    </div>
    <script src="103_StoreObjectInLocalStorage.js"></script>
  </body>
</html>
''';
