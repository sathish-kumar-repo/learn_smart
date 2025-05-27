import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/CSS Animation/topicName/css100TJAnimation.dart';

class Project7 extends StatefulWidget {
  const Project7({Key? key}) : super(key: key);

  @override
  State<Project7> createState() => _Project7State();
}

class _Project7State extends State<Project7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 7,
        topicsName: tutorJoes100CssAnimationTopics,
        img: 'cssAnimationI.jpeg',
      ),
      body: MyPage(
        children: [
          const H1('Button hover Animation'),
          const H3('Source Code'),
          Code(title: 'index.html', code: code1, type: 'html'),
          Code(title: 'style.css', code: code2, type: 'css'),
          const H3('Output'),
          const Img(name: 'cssanimation7.png'),
        ],
      ),
    );
  }
}

var code2 = '''
@import url("https://fonts.googleapis.com/css2?family=Roboto+Condensed:wght@300;400;700&display=swap");

* {
  font-family: "Roboto Condensed", sans-serif;
}

body {
  background-color: #333;
}

.btn {
  background: transparent;
  font-size: 20px;
  color: #fff;
  border: 2px solid #d35400;
  margin: 20px;
  padding: 15px 30px;
  text-transform: uppercase;
  font-weight: 400;
  position: relative;
  overflow: hidden;
  border-radius: 5px;
  cursor: pointer;
}

.btn::before {
  content: "";
  position: absolute;
  top: 0;
  left: 0;
  z-index: -1;
  width: 100%;
  height: 100%;
  background-color: #d35400;
  transition: 0.5s all ease-in-out;
}

/* btn-1 */
.btn-1::before {
  height: 0;
}
.btn-1:hover::before {
  /* To remove top value */
  top: unset;
  bottom: 0;
  height: 100%;
}

/* btn-2 */
.btn-2::before {
  top: unset;
  bottom: 0;
  height: 0;
}
.btn-2:hover::before {
  bottom: unset;
  top: 0;
  height: 100%;
}

/* btn-3 */
.btn-3::before {
  left: unset;
  width: 0;
  right: 0;
}
.btn-3:hover::before {
  right: unset;
  left: 0;
  width: 100%;
}

/* btn-4 */
.btn-4::before {
  right: unset;
  width: 0;
  left: 0;
}
.btn-4:hover::before {
  left: unset;
  right: 0;
  width: 100%;
}

.btn-5::before,
.btn-6::before,
.btn-7::before,
.btn-8::before {
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}

/* btn-5 */
.btn-5::before {
  height: 0;
}
.btn-5:hover::before {
  height: 100%;
}

/* btn-6 */
.btn-6::before {
  width: 0;
}
.btn-6:hover::before {
  width: 100%;
}

/* btn-7 */
.btn-7::before {
  height: 0;
  transform: translate(-50%, -50%) rotate(45deg);
}
.btn-7:hover::before {
  height: 380%;
}

/* btn-8 */
.btn-8::before {
  height: 0;
  transform: translate(-50%, -50%) rotate(-45deg);
}
.btn-8:hover::before {
  height: 380%;
}
''';
var code1 = '''
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Button hover Animation</title>
    <link rel="stylesheet" href="style.css" />
  </head>
  <body>
    <button class="btn btn-1">Button</button>
    <button class="btn btn-2">Button</button>
    <button class="btn btn-3">Button</button>
    <button class="btn btn-4">Button</button>
    <button class="btn btn-5">Button</button>
    <button class="btn btn-6">Button</button>
    <button class="btn btn-7">Button</button>
    <button class="btn btn-8">Button</button>
  </body>
</html>''';
