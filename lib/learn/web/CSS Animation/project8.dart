import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/CSS Animation/topicName/css100TJAnimation.dart';

class Project8 extends StatefulWidget {
  const Project8({Key? key}) : super(key: key);

  @override
  State<Project8> createState() => _Project8State();
}

class _Project8State extends State<Project8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 8,
        topicsName: tutorJoes100CssAnimationTopics,
        img: 'cssAnimationI.jpeg',
      ),
      body: MyPage(
        children: [
          const H1('Animated Toggle Btn'),
          const H3('Source Code'),
          Code(title: 'index.html', code: code1, type: 'html'),
          Code(title: 'style.css', code: code2, type: 'css'),
          Code(title: 'script.js', code: code3, type: 'javascript'),
          const H3('Output'),
          const Img(name: 'cssanimation8.png'),
        ],
      ),
    );
  }
}

var code3 = '''
document.addEventListener("DOMContentLoaded", function () {
  const checkBox = document.querySelector("#check");
  const container = document.querySelector(".container");

  checkBox.addEventListener("change", function () {
    if (this.checked) {
      container.style.backgroundColor = "#333";
    } else {
      container.style.backgroundColor = "aliceblue";
    }
  });
});
''';
var code2 = '''
* {
  margin: 0;
  padding: 0;
}

.container {
  width: 100vw;
  height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  background-color: aliceblue;
}
.btn {
  width: 200px;
  height: 100px;
  background: #c1c1c1;
  border-radius: 200px;
  cursor: pointer;
  position: relative;
  box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;
}
.btn::before {
  position: absolute;
  content: "";
  width: 90px;
  height: 90px;
  background-color: #fff;
  border-radius: 50%;
  margin: 5px;
  transition: 0.5s;
}
input:checked + .btn {
  background-color: #dc143c;
}
input:checked + .btn::before {
  transform: translateX(100px);
}
input {
  display: none;
}
''';
var code1 = '''
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Animated Toggle Btn</title>
    <link rel="stylesheet" href="style.css" />
  </head>
  <body>
    <div class="container">
      <input type="checkbox" id="check" />
      <label for="check" class="btn"></label>
    </div>
    <script src="script.js"></script>
  </body>
</html>
''';
