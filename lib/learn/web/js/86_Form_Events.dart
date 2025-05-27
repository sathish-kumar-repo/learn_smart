import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/JS/topicName/jsTopics.dart';

class FormEvents extends StatefulWidget {
  const FormEvents({Key? key}) : super(key: key);

  @override
  State<FormEvents> createState() => _FormEventsState();
}

class _FormEventsState extends State<FormEvents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 86,
        topicsName: javaScriptTopics,
        img: 'js.png',
        contain: true,
      ),
      body: MyPage(
        children: [
          const H1('Form Events'),
          const P(
              'Form events in JavaScript are events that are triggered when a user interacts with a form on a web page. These events allow you to capture and respond to user actions, such as submitting a form, entering data into form fields, or resetting a form.'),
          const H3('Source Code'),
          Code(title: 'index.html', code: code1, type: 'html'),
          Code(title: 'script.js', code: code2, type: 'javascript'),
        ],
      ),
    );
  }
}

var code2 = '''
/*
  Form Events in JavaScript
      submit
      reset
      change

      checked
      blur
      focus
      input
     
*/

const form = document.querySelector("form");
const username = document.querySelector("#username");
const email = document.querySelector("#email");
const course = document.querySelector("#course");
const checkbox = document.querySelector("#agree");
const radios = document.querySelectorAll('input[name="gender"]');

/*submit*/
form.addEventListener("submit", function (e) {
  /*
    In normal , fill the form and click submit button, then # symbol vanthu , data ellam refresh aagidum
        Reason
           * By default, form oda action neenga type pandra data vaa vera oru edathu ku tranfer pannu
           * So atha block panni enaku intha page la refresh aagama antha process sa pannu appadina intha function na use pannanum e.preventDefault();
    */

  e.preventDefault();
  console.log("Form Submitted");
  console.log("User Name : ", username.value);
  console.log("Email     : ", email.value);

  let selectedGender = "";
  radios.forEach((radio) => {
    if (radio.checked) {
      selectedGender = radio.value;
    }
  });
  console.log("Gender :", selectedGender);
});

/*change*/
course.addEventListener("change", function (e) {
  const selectedCourse = e.target.value;
  console.log("Selected Course     : ", selectedCourse);
});

/*reset*/
form.addEventListener("reset", function (e) {
  console.log("Reset or Clear Form Data");
});

/*change*/
checkbox.addEventListener("change", function (e) {
  if (e.target.checked) {
    console.log("Checkbox is checked.");
  } else {
    console.log("Checkbox is unchecked.");
  }
});

/*input*/
// Each time ,it is trigger if user give input
username.addEventListener("input", function (e) {
  console.log("Username input changed:", e.target.value);
});

/*focus*/
// in focus
username.addEventListener("focus", function (e) {
  username.style.borderColor = "orange";
});

/*blur*/
// in out of focus
username.addEventListener("blur", function (e) {
  username.style.borderColor = "black";
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
      @import url("https://fonts.googleapis.com/css2?family=Lobster&family=Poppins:wght@100;200;300;400;500;600;700;800&display=swap");
      * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: "Poppins", sans-serif;
      }
      body {
        width: 100vw;
        height: 100vh;
        background-color: palegreen;
        display: flex;
        justify-content: center;
        align-items: center;
        font-size: 12px;
      }
      h1 {
        font-weight: 500;
        text-transform: uppercase;
        font-size: 14px;
      }
      form {
        width: 300px;
        background-color: #fff;
        padding: 10px;
      }
      .form-group {
        margin-bottom: 10px;
      }
      .form-group > label {
        display: block;
        padding: 3px 0;
      }
      input[type="text"],
      input[type="email"],
      select {
        width: 100%;
        outline: none;
        font-size: 12px;
      }
      fieldset {
        border: none;
      }
      button {
        width: 100px;
        border: none;
        background-color: #222;
        color: #fff;
        padding: 2px 10px;
      }

      form .form-group:last-of-type {
        margin-top: 10px;
      }
    </style>
  </head>
  <body>
    <form action="#" autocomplete="off">
      <h1>Form Events in JavaScript</h1>

      <div class="form-group">
        <label for="username">User Name</label>
        <input type="text" id="username" />
      </div>

      <div class="form-group">
        <label for="email">Email</label>
        <input type="email" id="email" />
      </div>

      <div class="form-group">
        <label for="course">Course Name</label>
        <select id="course">
          <option value="">Select Course</option>
          <option value="C">C</option>
          <option value="C++">C++</option>
          <option value="Java">Java</option>
        </select>
      </div>

      <div class="form-group">
        <fieldset>
          <legend>Gender</legend>
          <label><input type="radio" name="gender" value="male" /> Male</label>
          <label
            ><input type="radio" name="gender" value="female" />Female</label
          >
        </fieldset>
      </div>

      <input type="checkbox" id="agree" />
      <label for="agree">I Agree all Condition</label>

      <div class="form-group">
        <button type="submit">Submit</button>
        <button type="reset">Reset</button>
      </div>
    </form>
    <script src="95(3) Form Events.js"></script>
  </body>
</html>
''';
