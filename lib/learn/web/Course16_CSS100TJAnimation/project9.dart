import 'package:learn_smart/widgets/code_pro.dart';
import 'package:learn_smart/learn/web/Course16_CSS100TJAnimation/topicName/css100TJAnimation.dart';

class Project9 extends StatefulWidget {
  const Project9({Key? key}) : super(key: key);

  @override
  State<Project9> createState() => _Project9State();
}

class _Project9State extends State<Project9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: MyDrawer(
        activeIndex: 9,
        topicsName: tutorJoes100CssAnimationTopics,
        img: 'cssAnimationI.jpeg',
      ),
      body: MyPage(
        children: [
          const H1('Animated Border Button'),
          const H3('Source Code'),
          Code(title: 'index.html', code: code1, type: 'html'),
          Code(title: 'style.css', code: code2, type: 'css'),
          const H3('Output'),
          const Img(name: 'cssanimation9.png'),
        ],
      ),
    );
  }
}

var code2 = '''
@import url("https://fonts.googleapis.com/css2?family=Roboto+Condensed:wght@300;400;700&display=swap");

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: "Roboto Condensed", sans-serif;
}

body {
  width: 100vw;
  height: 100vh;
  display: grid;
  place-items: center;
}
.container {
  width: 200px;
  height: 80px;
  background-color: #fff;
  box-shadow: rgba(50, 50, 93, 0.25) 0px 2px 5px -1px,
    rgba(0, 0, 0, 0.3) 0px 1px 3px -1px;
  border-radius: 100px;
  overflow: hidden;
  position: relative;
  cursor: pointer;
}

.border {
  width: 200px;
  height: 40px;
  background: linear-gradient(45deg, #e94cdc, #4c28e4);
  animation-name: rotate;
  animation-duration: 2s;
  animation-iteration-count: infinite;
  animation-timing-function: linear;
  animation-play-state: paused;
}
@keyframes rotate {
  from {
    transform: rotate(0deg);
  }
  to {
    transform: rotate(360deg);
  }
}
button {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  width: 190px;
  height: 70px;
  border-radius: 100px;
  border: none;
  background-color: #fff;
  font-size: 25px;
  cursor: inherit;
}

.container:hover .border{
  animation-play-state: running;
}
''';
var code1 = '''
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Animated Border Button</title>
    <link rel="stylesheet" href="style.css" />
  </head>
  <body>
    <div class="container">
      <div class="border"></div>
      <button>Click me</button>
    </div>
  </body>
</html>
''';
